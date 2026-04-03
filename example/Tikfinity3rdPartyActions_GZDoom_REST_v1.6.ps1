function Get-LatestVersionedScript {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$BaseName,

        [string[]]$Path = @(".", ".\lib")
    )

    foreach ($currentPath in $Path) {

        Write-Verbose "Searching for latest version of $BaseName in '$currentPath'"

        $pattern = "${BaseName}_v*.ps1"

        # Try versioned files first
        $scripts = Get-ChildItem -Path $currentPath -Filter $pattern -File -ErrorAction SilentlyContinue

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
        $baseFile = Join-Path $currentPath "${BaseName}.ps1"

        if (Test-Path $baseFile) {
            return Get-Item $baseFile
        }
    }

    throw "No matching versioned or base script found for '$BaseName' in paths: $($Path -join ', ')"
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
$Global:NamedPipe_Server_Debug = $false
#GZDoom API Parameters
$Global:GZDoom_PipeAPI_Debug = $false
# HTTP Parameters
$Global:REST_Server_Port = 8832
$Global:REST_Server_Uri = "http://127.0.0.1:$Global:REST_Server_Port/"
# Partner Process Name (Optional)
$Global:REST_Client_processName = "Tikfinity"
# REST API Application Information (Required)
$Global:REST_API_appInfo = 	@{
						author = "Jeremy Tiggy"
						name = "GZDoom Tikfinity API" 
						version = "1.0"
					}

$Global:REST_API_Debug = $false
# GZDoom REST Parameters
$Global:GZDoom_REST_Debug = $false
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

    Write-Host "Failed to load external data file for RES_API_Actions. Quitting."
    Write-Host $_

	exit 1
}


$Global:REST_API_Tikfinity_JSON_ExecuteThirdPartyAction = @'
{
  "categoryId": "categoryId",
  "actionId": "actionId",
  "context": {
    "userID": "userID",
    "username": "username",
    "nickname": "nickname",
    "profilePictureUrl": "https://about:blank",
    "giftId": 0,
	"giftName": "giftName",
	"coins": 999,
	"repeatCount": 0,
	"likeCount": 0,
	"totalLikeCount": 0,
	"subMonth": 0,
	"emoteId": 0,
	"comment": "chat message",
	"triggerTypeId": -1,
    "tikfinityUserId": 123456789,
    "tikfinityUsername": "tikfinityUsername"
  }
}
'@

function REST_API_Application-Specific-Action {
	#Send Tikfinity Client Action Data to GZDoom
	# For this application, we are just using a few members
	# Because JSON data isn't always guaranteed, we use this helper function to safely get the value
	$categoryId = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'categoryId'
	# Another way to get data from the Tikfinity data is to use the available placeholder substitution logic. {{placeholder}}
	$actionId_with_placeholder = '{{actionId}}'
	$actionId = Replace-PlaceholdersWithValues -stringContainingPlaceholders $actionId_with_placeholder -objectWithValues $Global:REST_API_clientActionData
	# where this has EXTREME value, is to pass TikFinity values to GZDoom inside of commandString
	#for example:
	# action: applicationData = 'echo "Thank you for the gift of {{context.coins}}, dear {{context.nickname}}!"
	# if you assign this to the applicationData of a particular action, you can send this to the screen with the persons' user nick name!
	# $actionId = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'actionId'
	$context_userID = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.userID'
	$context_username = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.username'
	$context_nickname = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.nickname'
	$context_profilePictureUrl = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.profilePictureUrl'
	$context_giftId = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.giftId'
	$context_giftName = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.giftName'
	$context_coins = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.coins'
	$context_repeatCount = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.repeatCount'
	$context_likeCount = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.likeCount'
	$context_totalLikeCount = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.totalLikeCount'
	$context_subMonth = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.subMonth'
	$context_emoteId = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.emoteId'
	$context_comment = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.comment'
	$context_triggerTypeId = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.triggerTypeId'
	$context_tikfinityUserId = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.tikfinityUserId'
	$context_tikfinityUsername = Get-MemberValueFromUnknownObject -objectWithUnknownMembers $Global:REST_API_clientActionData -targetMember_nameString 'context.tikfinityUsername'

	if ($categoryId -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_categoryId' -cvarValue $categoryId }
	if ($actionId -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_actionId' -cvarValue $actionId }
	if ($context_userID -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_userID' -cvarValue $context_userID }
	if ($context_username -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_username' -cvarValue $context_username}
	if ($context_nickname -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_nickname' -cvarValue $context_nickname}
	if ($context_profilePictureUrl -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_profilePictureUrl' -cvarValue $context_profilePictureUrl}
	if ($context_giftName -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_giftName' -cvarValue $context_giftName}
	if ($context_comment -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_comment' -cvarValue $context_comment}
	if ($context_tikfinityUsername -ne $null) { $null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_s_TF_tikfinityUsername' -cvarValue $context_tikfinityUsername}
	if ($context_giftId -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_giftId' -cvarValue $context_giftId }
	if ($context_coins -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_coins' -cvarValue $context_coins}
	if ($context_repeatCount -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_repeatCount' -cvarValue $context_repeatCount}
	if ($context_likeCount -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_likeCount' -cvarValue $context_likeCount}
	if ($context_totalLikeCount -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_totalLikeCount' -cvarValue $context_totalLikeCount}
	if ($context_subMonth -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_subMonth' -cvarValue $context_subMonth}
	if ($context_emoteId -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_emoteId' -cvarValue $context_emoteId}
	if ($context_triggerTypeId -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_triggerTypeId' -cvarValue $context_triggerTypeId}
	if ($context_tikfinityUserId -ne $null) {$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_n_TF_tikfinityUserId' -cvarValue $context_tikfinityUserId}
	
	
	#GZDoom_REST Action - Execute applicationData-based dynamic Console Command
	$local_action = $Global:REST_API_Action
	if ($Global:REST_API_Debug) { 
		Write-Host "[REST_API_Application-Specific-Action]: DEBUG - printing local action" -ForegroundColor Gray 
		Show-ObjectProperties -Obj $local_action
	}
	$local_actionApplicationData = ""
	if ($null -ne $local_action.applicationData) {
		$local_actionApplicationData = $local_action.applicationData
	} else { Write-Host "[REST_API_Application-Specific-Action]: FAULT - applicationData is null" -ForegroundColor Red }
	if ($Global:REST_API_Debug) { Write-Host "[GZDoom_REST_Application-Specific-Action]: Dynamic Console Command Base: $($local_actionApplicationData)" }
	$consoleCommand = Replace-PlaceholdersWithValues -stringContainingPlaceholders $local_actionApplicationData -objectWithValues $Global:REST_API_clientActionData
	if ($Global:REST_API_Debug) { Write-Host "[GZDoom_REST_Application-Specific-Action]: Dynamic Console Command: $($consoleCommand)" }
	$Global:GZDoom_REST_Action_CONSOLE_COMMAND = $consoleCommand
	$null = GZDoom_PipeAPI_CONSOLE_COMMAND -commandString $Global:GZDoom_REST_Action_CONSOLE_COMMAND

	$Global:REST_API_Action_ApplicationDataAvailable = $true
	
	#Tikfinity: We then signal to the running ACS script within TikFinity_REST_API_clientActionData.pk3 that the data is ready
	$null = GZDoom_PipeAPI_CVAR_SET -cvarName 'CV_b_API_dataReady' -cvarValue 1
}

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
Write-Host "[Startup]: Would you like to start up in 'debug' mode or 'normal'?" -ForegroundColor Cyan
Write-Host "           Type 'debug' to walk-thru each sub-system as it starts up." -ForegroundColor Cyan
Write-Host "           This is helpful to be able to get support." -ForegroundColor Cyan
Write-Host "           Type 'normal' or just hit Enter to continue in Automatic Mode." -ForegroundColor Cyan
Write-Host -NoNewLine "[Enter Command (" -ForegroundColor White
Write-Host -NoNewLine "debug" -ForegroundColor Yellow
Write-Host -NoNewLine "|" -ForegroundColor White
Write-Host -NoNewLine "normal or press enter to skip" -ForegroundColor Green
Write-Host -NoNewLine ")]:> " -ForegroundColor White
$enableDebuggingResponse = Read-Host
$enableDebugging = $enableDebuggingResponse -eq 'debug'

if ($enableDebugging) {
	Write-Host "[Startup]: Type 'select' to pick which systems to debug."  -ForegroundColor Cyan
	Write-Host "           Type 'all' or press Enter to print out information on everything." 
	Write-Host -NoNewLine "[Enter Command (select|all or press enter to skip)]:> "
	$selectDebuggingResponse = Read-Host
	$selectDebug = $selectDebuggingResponse -eq 'select'
	$debugAll = $selectDebuggingResponse -ne 'select'
	if ($Global:GZDoom_PipeAPI_Debug -eq $false) {
		if ($selectDebug) {
			Write-Host "`n[Startup]: Enable Pipe Debugging Messages?" -ForegroundColor Cyan
			Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
			$enableGZDoomPipeAPIdebugging = Read-Host
			$debugGZDoomPipeAPI = $enableGZDoomPipeAPIdebugging -eq 'yes'
		} else { $debugGZDoomPipeAPI = $true}
		$Global:GZDoom_PipeAPI_Debug = $debugGZDoomPipeAPI
	}
	if ($Global:REST_Server_Debug -eq $false) {
		if ($selectDebug) {
			Write-Host "`n[Startup]: Enable HTTP Server Debugging Messages?" -ForegroundColor Cyan
			Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
			$enableServerDebugging = Read-Host
			$debugServer = $enableServerDebugging -eq 'yes'
		} else { $debugServer = $true }
		$Global:REST_Server_Debug = $debugServer
	}
	if ($Global:REST_API_Debug -eq $false) {
		if ($selectDebug) {
			Write-Host "[Startup]: Enable REST API Debugging Messages?" -ForegroundColor Cyan
			Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
			$enable_REST_API_Debugging = Read-Host
			$debugREST = $enable_REST_API_Debugging -eq 'yes'
		} else { $debugREST = $true }
		$Global:REST_API_Debug = $debugREST
	}
	if ($Global:GZDoom_REST_Debug -eq $false) {
		if ($selectDebug) {
			Write-Host "[Startup]: Enable GZDoom API Debugging Messages?" -ForegroundColor Cyan
			Write-Host -NoNewLine "[Enter Command (yes|no)]:> "
			$enable_GZDoom_REST_Debugging = Read-Host
			$debugGZDoomREST = $enable_GZDoom_REST_Debugging -eq 'yes'
		} else { $debugGZDoomREST = $true }
		$Global:GZDoom_REST_Debug = $debugGZDoomREST
	}
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


if ($Global:NamedPipe_Client_ConnectedToServer -and $Global:REST_Server_Running) {
	$automatic = $true
	Write-Host "[Startup]: The Pipe is connected and the Server is running. " -ForegroundColor Green
	if ($enableDebugging) {
		Write-Host "[Startup]: Press Enter to continue in Automatic Mode" -ForegroundColor Cyan
		Write-Host "[Startup]: Type 'manual' to continue in Manual Mode (you can always enter Auto later)" -ForegroundColor Cyan
		Write-Host -NoNewLine "[Startup]: (" -ForegroundColor White
		Write-Host -NoNewLine "manual" -ForegroundColor Yellow
		Write-Host -NoNewLine "|" -ForegroundColor White
		Write-Host -NoNewLine "leave blank and hit enter for auto" -ForegroundColor Green
		Write-Host -NoNewLine ") > " -ForegroundColor White
		$cmd = Read-Host
		if ($cmd -eq 'manual') { $automatic = $false }
	}
} else {
	$automatic = $false
}

Write-Host "`n[Startup]: Starting main loop..." -ForegroundColor White

try {
    while ($true) {
		if ($automatic -eq $false)
		{
			Write-Host "[Main Loop]: To quit, type 'exit'." -ForegroundColor Cyan
			$userCommandPromptString = "[Main Loop]: Enter Command (exit"
			#REST
			if ($Global:REST_Server_Running -eq $false) { 
				Write-Host "[Main Loop]: Type 'listen' to start the REST HTTP Server on $Global:REST_Server_Uri" -ForegroundColor Cyan
				$userCommandPromptString+= "|listen" 
			}
			if ($Global:REST_Server_Running -eq $true) { 
				Write-Host "[Main Loop]: Type 'block' to wait for a HTTP request."  -ForegroundColor Cyan
				$userCommandPromptString+= "|block" 
			}
			Write-Host "[Main Loop]: Type 'simulate' to manually put together an event with data." -ForegroundColor Cyan
			$userCommandPromptString+= "|simulate"
			
			#PIPE
			if ($Global:NamedPipe_Client_ConnectedToServer -eq $false) { 
				Write-Host "[Main Loop]: Type 'open' to start a Named Pipe connection. (current target is '$($Global:NamedPipe_Server_Name) @ $($Global:NamedPipe_Server_Process)')" -ForegroundColor Cyan
				$userCommandPromptString+= "|open" }
			if ($Global:NamedPipe_Client_ConnectedToServer -eq $true) { 
				Write-Host "[Main Loop]: Type 'close' to end the Named Pipe connection '$($Global:NamedPipe_Server_Name) @ $($Global:NamedPipe_Server_Process)'" -ForegroundColor Cyan
				$userCommandPromptString+= "|close" }
			if ( ($Global:REST_Server_Running -eq $true) -and ($Global:NamedPipe_Client_ConnectedToServer -eq $true) ) {
				Write-Host "[Main Loop]: Type 'auto' to leave manual control and send REST Actions continuously to GZDoom." -ForegroundColor Cyan
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


