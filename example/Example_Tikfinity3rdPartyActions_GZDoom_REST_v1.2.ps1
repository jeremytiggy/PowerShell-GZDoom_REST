function Get-LatestVersionedScript {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$BaseName,

        [string]$Path = "."
    )

    Write-Verbose "Searching for latest version of $BaseName in '$Path'"

    $pattern = "${BaseName}_v*.ps1"

    # Try versioned files first
    $scripts = Get-ChildItem -Path $Path -Filter $pattern -File -ErrorAction SilentlyContinue

    if ($scripts) {

        $latest = $scripts |
            Sort-Object {
                if ($_.Name -match 'v(\d+(\.\d+)+)') {
                    [version]$matches[1]
                }
                else {
                    [version]"0.0"
                }
            } -Descending |
            Select-Object -First 1

        return $latest
    }

    # Fallback to non-versioned file
    $baseFile = Join-Path $Path "${BaseName}.ps1"

    if (Test-Path $baseFile) {
        return Get-Item $baseFile
    }

    throw "No matching versioned or base script found for '$BaseName' in '$Path'."
}
# Include library REST Server
# Include GZDoom_REST.ps1 pfunctions and variables
try {

    $script = Get-LatestVersionedScript -BaseName "GZDoom_REST"

    Write-Host "Loading $($script.Name)..."

    . $script.FullName

}
catch {

    Write-Host "Failed to load latest GZDoom_REST."
    Write-Host $_
    exit 1

}
REST_API_SERVER_LibraryLoaded

# Library Parameters and Variables
# Pipe Parameters
$Global:NamedPipe_Server_Name = 'GZD'
$Global:NamedPipe_Server_Process = 'GZDoom'
$Global:NamedPipe_Server_ResponseDelay = 28 #milliseconds
$Global:NamedPipe_Server_ResponseTimeLimit = 5000 #milliseconds
$Global:NamedPipe_Server_Debug = $true
#GZDoom API Parameters
$Global:GZDoom_PipeAPI_Debug = $true
# HTTP Parameters
$Global:REST_Server_Port = 8832
$Global:REST_Server_Uri = "http://127.0.0.1:$Global:REST_Server_Port/"
# Partner Process Name (Optional)
$Global:REST_Client_processName = "Tikfinity"
# REST API Application Information (Required)
$Global:REST_API_appInfo = 	@{
						author = "Jeremy Tiggy"
						name = "GZDoom Tikfinity API" 
						version = "6.6.6"
					}

$Global:REST_API_Debug = $true
# GZDoom REST Parameters
$Global:GZDoom_REST_Debug = $true
Write-Host "[GZDoom_REST] Parameters registered. May be overwritten." -ForegroundColor Yellow
# REST API Data Definitions for Actions (Required) --------
# Define action categories and their corresponding actions for the REST API
# Each action category has a unique identifier (categoryId) and a human-readable name (categoryName).
# Each action within a category has a unique identifier (actionId) and a human-readable name (actionName).
# GZDoom_REST : Includes external file access to GZDoom_REST_API_Actions_vX.X.ps1 for modularity
try {

    $script = Get-LatestVersionedScript -BaseName "GZDoom_REST_API_Actions"

    Write-Host "Loading $($script.Name)..."

    . $script.FullName

}
catch {

    Write-Host "Failed to load external data file for RES_API_Actions. Using Internal values."
    Write-Host $_

	$Global:REST_API_Actions = @{
		cat1 = @{
			categoryId   = "cat1"
			categoryName = "Gift"

			actions = @{
				cat1action1 = @{
					actionId    = "cat1action1"
					actionName  = "Gift with Coins"
					applicationData = "echo {{context.username}} has gifted {{context.coins}} coins"
				}

				cat1action2 = @{
					actionId    = "cat1action2"
					actionName  = "Gift over 100 coins"
					applicationData = 'set CV_s_TF_username "{{context.username}}";set CV_s_TF_nickname "{{context.nickname}}";set CV_s_TF_sanitized_user "{{context.username}}";set CV_s_API_summon_classname "fatso";set CV_b_API_summon_buddy false;set CV_n_API_summon_size 2;set CV_n_API_summon_points 100;wait 35;set CV_b_API_dataReady true'
				}
			}
		}

		cat2 = @{
			categoryId   = "cat2"
			categoryName = "Command"

			actions = @{
				cat2action1 = @{
					actionId    = "cat2action1"
					actionName  = "!iddqd"
					applicationData = "give InvulnerabilitySphere"
				}

				cat2action2 = @{
					actionId    = "cat2action2"
					actionName  = "!idkfa"
					applicationData = "give weapons;give ammo"
				}
			}
		}
	}

}



$Global:REST_API_JSON_ExecuteThirdPartyAction = @'
{
  "categoryId": "categoryId",
  "actionId": "actionId",
  "context": {
    "applicationData": "applicationData"
  }
}
'@

$Global:REST_API_Tikfinity_JSON_ExecuteThirdPartyAction = @'
{
  "categoryId": "categoryId",
  "actionId": "actionId",
  "context": {
    "userID": "userID",
    "username": "username",
    "nickname": "nickname",
    "profilePictureUrl": "https://about:blank",
    "coins": 999,
    "triggerTypeId": -1,
    "tikfinityUserId": 123456789,
    "tikfinityUsername": "tikfinityUsername"
  }
}
'@
Write-Host "[GZDoom_REST] Action Categories & Definitions registered. May be overwritten." -ForegroundColor Yellow
# REST API Data Definitions for Actions ^^^^^^^^^^^^^^^^

# GZDoom API with REST Server
# FROM LIBRARIES: IMPORTANT GLOBAL variables-----------------------
# Pipe Communications Variables
$Global:NamedPipe_Client_ConnectedToServer = $false
$Global:NamedPipe_Server_Data = ''
$Global:NamedPipe_Server_Data_available = $false
$Global:NamedPipe_Client_Data = ''
$Global:NamedPipe_Client_Debug = $false
# GZDoom API Communication variables
$Global:GZDoom_PipeAPI_CMD_CVAR_Name = ''
$Global:GZDoom_PipeAPI_CMD_CVAR_Value_String = ''
# Important REST Variables
$Global:REST_Server_Running = $false
$Global:REST_Server_Listener = $null
$Global:REST_API_clientActionData = $null
$Global:REST_API_Action_categoryId = ""
$Global:REST_API_Action_actionId = ""
$Global:REST_API_Action = $null
$Global:REST_API_Action_Category = $null
$Global:REST_API_Action_ApplicationDataAvailable = $false
$Global:REST_API_Action_Executed = $false
# GZDoom REST Communication variables
$Global:GZDoom_REST_Action_CONSOLE_COMMAND = $null
# USER AND APPLICATION SPECIFIC DATA ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

function Edit-ObjectInteractive {
    param(
        [Parameter(Mandatory)]
        [psobject]$Object,

        [string]$Path = ""
    )

    $fnName = $MyInvocation.MyCommand.Name
    foreach ($prop in $Object.PSObject.Properties) {

        $currentPath = if ($Path) {
            "$Path.$($prop.Name)"
        } else {
            $prop.Name
        }

        $value = $prop.Value

        # Nested PSCustomObject - Recurse
        if ($value -is [PSCustomObject]) {
            Edit-ObjectInteractive -Object $value -Path $currentPath
        }

        # Array - Iterate
        elseif ($value -is [System.Collections.IEnumerable] -and
                -not ($value -is [string])) {

            for ($i = 0; $i -lt $value.Count; $i++) {

                $itemPath = "$currentPath[$i]"
                $item = $value[$i]

                if ($item -is [PSCustomObject]) {
                    Edit-ObjectInteractive -Object $item -Path $itemPath
                }
                else {
                    Show-EditPrompt -FunctionName $fnName -Path $itemPath -Value $item
                    $newValue = Read-Host "  Enter new value (blank = keep)"

                    if ($newValue -ne "") {
                        $value[$i] = Convert-ToOriginalType $newValue $item
                    }
                }
            }
        }

        # Leaf Property - Prompt
        else {
            Show-EditPrompt -FunctionName $fnName -Path $currentPath -Value $value
            $newValue = Read-Host "  Enter new value (blank = keep)"

            if ($newValue -ne "") {
                $Object.$($prop.Name) = Convert-ToOriginalType $newValue $value
            }
        }
    }
}

function Show-EditPrompt {
    param(
        [string]$FunctionName,
        [string]$Path,
        $Value
    )

    $typeName = if ($null -ne $Value) { $Value.GetType().Name } else { "null" }

    Write-Host ""
    Write-Host "[$FunctionName] $Path" -ForegroundColor Cyan
    Write-Host "  Current : $Value ($typeName)" -ForegroundColor Gray
}

function Convert-ToOriginalType {
    param(
        [string]$InputValue,
        $OriginalValue
    )

    if ($null -eq $OriginalValue) {
        return $InputValue
    }

    $type = $OriginalValue.GetType()

    try {
        switch ($type.Name) {
            "Int32"    { return [int]$InputValue }
            "Int64"    { return [long]$InputValue }
            "Double"   { return [double]$InputValue }
            "Decimal"  { return [decimal]$InputValue }
            "Boolean"  { return [bool]$InputValue }
            "DateTime" { return [datetime]$InputValue }
            "String"   { return [string]$InputValue }
            default    { return [System.Convert]::ChangeType($InputValue, $type) }
        }
    }
    catch {
        Write-Warning "Could not convert '$InputValue' to [$($type.Name)]. Keeping original value."
        return $OriginalValue
    }
}

# Main Program Loop -------------------------------
# ask if user wants to enable debugging
if ($Global:NamedPipe_Server_Debug -eq $false) {
	Write-Host "'n[Startup]: Enable Pipe Debugging Messages?" -ForegroundColor Cyan
	Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
	$enablePipeDebugging = Read-Host
	if ($enablePipeDebugging -eq 'yes') { $Global:NamedPipe_Server_Debug = $true }
}

if ($Global:GZDoom_PipeAPI_Debug -eq $false) {
	Write-Host "'n[Startup]: Enable GZDoom Pipe Debugging Messages?" -ForegroundColor Cyan
	Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
	$enableGZDoomPipeAPIdebugging = Read-Host
	if ($enableGZDoomPipeAPIdebugging -eq 'yes') { $Global:GZDoom_PipeAPI_Debug = $true }
}
if ($Global:REST_Server_Debug -eq $false) {
	Write-Host "'n[Startup]: Enable Server Debugging Messages?" -ForegroundColor Cyan
	Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
	$enableServerDebugging = Read-Host
	if ($enableServerDebugging -eq 'yes') { $Global:REST_Server_Debug = $true }
}
if ($Global:REST_API_Debug -eq $false) {
	Write-Host "[Startup]: Enable REST API Debugging Messages?" -ForegroundColor Cyan
	Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
	$enable_REST_API_Debugging = Read-Host
	if ($enable_REST_API_Debugging -eq 'yes') { $Global:REST_API_Debug = $true }
}
if ($Global:GZDoom_REST_Debug -eq $false) {
	Write-Host "[Startup]: Enable GZDoom REST Debugging Messages?" -ForegroundColor Cyan
	Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
	$enable_GZDoom_REST_Debugging = Read-Host
	if ($enable_GZDoom_REST_Debugging -eq 'yes') { $Global:GZDoom_REST_Debug = $true }
}

Write-Host "[Startup]: Starting communications..." -ForegroundColor White
GZDoom_REST_Startup

# Communication Status After Startups
if ($Global:NamedPipe_Client_ConnectedToServer) {
    Write-Host "[Startup]: Client Connected To Named Pipe Server" -ForegroundColor Green
} else {
    Write-Host "[Startup]: Pipe not connected" -ForegroundColor Yellow
}
if ($Global:REST_Server_Running) {
    Write-Host "[Startup]: HTTP REST Response Server is running." -ForegroundColor Green
} else {
    Write-Host "[Startup]: HTTP REST Response Server is not running." -ForegroundColor Yellow
}



Write-Host "`n[Startup]: Starting main loop..." -ForegroundColor White
$automatic = $false
try {
    while ($true) {
		if ($automatic -eq $false)
		{
			Write-Host "[Main Loop]: To quit, type 'exit'."
			$userCommandPromptString = "[Main Loop]: Enter Command (exit"
			#REST
			if ($Global:REST_Server_Running -eq $false) { 
				Write-Host "[Main Loop]: Type 'listen' to start the REST HTTP Server on $Global:REST_Server_Uri"
				$userCommandPromptString+= "|listen" 
			}
			if ($Global:REST_Server_Running -eq $true) { 
				Write-Host "[Main Loop]: Type 'block' to wait for a HTTP request." 
				$userCommandPromptString+= "|block" 
			}
			Write-Host "[Main Loop]: Type 'simulate' to manually put together an event with data."
			$userCommandPromptString+= "|simulate"
			
			#PIPE
			if ($Global:NamedPipe_Client_ConnectedToServer -eq $false) { 
				Write-Host "[Main Loop]: Type 'open' to start a Named Pipe connection. (current target is '$($Global:NamedPipe_Server_Name) @ $($Global:NamedPipe_Server_Process)')"
				$userCommandPromptString+= "|open" }
			if ($Global:NamedPipe_Client_ConnectedToServer -eq $true) { 
				Write-Host "[Main Loop]: Type 'close' to end the Named Pipe connection '$($Global:NamedPipe_Server_Name) @ $($Global:NamedPipe_Server_Process)'"
				$userCommandPromptString+= "|close" }
			if ( ($Global:REST_Server_Running -eq $true) -and ($Global:NamedPipe_Client_ConnectedToServer -eq $true) ) {
				Write-Host "[Main Loop]: Type 'auto' to leave manual control and send REST Actions continuously to GZDoom."
				$userCommandPromptString+= "|auto"
			}
			
			$userCommandPromptString+= ")> "
			Write-Host -NoNewLine $userCommandPromptString
			$cmd = Read-Host
			if ($cmd -ne '') {
				if ($cmd -eq 'exit') { exit 1 }
				elseif ($cmd -eq 'listen') { REST_Server_Startup }
				elseif ($cmd -eq 'block' ) { REST_Server_Wait-For-Request }
				elseif ($cmd -eq 'simulate') {
					Write-Host "[Simulate]: Incoming Third Party Action Data" -ForegroundColor Yellow
					$Global:REST_API_clientActionData = $Global:REST_API_Tikfinity_JSON_ExecuteThirdPartyAction | ConvertFrom-Json
					Edit-ObjectInteractive -Object $Global:REST_API_clientActionData
					REST_API_Process-clientActionData
				}
				elseif ($cmd -eq 'open') { NamedPipe_Client_Startup	}
				elseif ($cmd -eq 'close') { NamedPipe_Client_CloseServerConnection }
				elseif ($cmd -eq 'auto') { $automatic = $true }
				else { Write-Host "[Main Loop] Invalid command." }
			}
			else {
				if ($Global:REST_Server_Running -eq $true) { Write-Host "[Main Loop] Checking HTTP REST Server for Requests." }
			}
		}
		if ($automatic -eq $true) {
			REST_Server_Wait-For-Request
		}

		#APPLICATION SPECIFIC LOGIC
        # If request is an action execution, acknowledge
        if ($Global:REST_API_Action_Executed) {
			$Global:REST_API_Action_Executed = $false
        }
		# END OF APPLICATION SPECIFIC LOGIC

    } # end of main while loop

} catch {
    Write-Host "SERVER ERROR: $($_.Exception.Message)" -ForegroundColor Red
} finally {
	Write-Host "=== CLIENT SHUTDOWN ===" -ForegroundColor Cyan
}


