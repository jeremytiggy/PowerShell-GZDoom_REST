Write-Host "[GZDoom_REST] Loading Library..." -ForegroundColor Gray


# ------------------------------------------------------------------------------------------------------------------------------------------------------
# This function searches for the latest version of a script with a given base name in a specified directory, loads it, and returns the file info object of the loaded script. 
# The expected naming convention for the scripts is BaseName_vX.X.ps1, where X.X represents the version number. If no matching scripts are found, an error is thrown.
# The -Path parameter is optional and defaults to the current directory if not provided.
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

# ------------------------------------------------------------------------------------------------------------------------------------------------------


# Include GZDoom_PipeAPI_vX.X.ps1 for GZDoom-specific pipe communication functions and variables
try {

    $script = Get-LatestVersionedScript -BaseName "GZDoom_PipeAPI"

    Write-Host "Loading $($script.Name)..."

    . $script.FullName

}
catch {

    Write-Host "Failed to load latest GZDoom_PipeAPI."
    Write-Host $_
    exit 1

}
GZDoom_PipeAPI_loaded

# Include REST_API_Server for REST functionality
try {

    $script = Get-LatestVersionedScript -BaseName "REST_API_Server"

    Write-Host "Loading $($script.Name)..."

    . $script.FullName

}
catch {

    Write-Host "Failed to load latest REST_API_Server"
    Write-Host $_
    exit 1

}
REST_API_SERVER_LibraryLoaded
# ------------------------------------------------------------------------------------------------------------------------------------------------------
# GZDoom REST ---------------------------------

# GZDoom API with REST Server
# FROM LIBRARIES: IMPORTANT GLOBAL variables-----------------------
# Pipe Communications Variables
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
$Global:REST_Server_Debug = $false
$Global:REST_API_clientActionData = $null
$Global:REST_API_Action_categoryId = ""
$Global:REST_API_Action_actionId = ""
$Global:REST_API_Action = $null
$Global:REST_API_Action_Category = $null
$Global:REST_API_Action_ApplicationDataAvailable = $false
$Global:REST_API_Action_Executed = $false
# GZDoom REST Communication variables
$Global:GZDoom_REST_Action_CONSOLE_COMMAND = $null

# FROM LIBRARIES: IMPORTANT GLOBAL variables^^^^^^^^^^^^^^^^^^^^^^^
# USER AND APPLICATION SPECIFIC DATA ------------------------------
# Copy this section into your script to overwrite these values with application specific values
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
$Global:REST_Client_processName = "ProcessName"
# REST API Application Information (Required)
$Global:REST_API_appInfo = 	@{
								author = "AUTHOR NAME"
								name = "GZDoom_REST" 
								version = "1.3"
							}

$Global:REST_API_Debug = $true
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

    Write-Host "Failed to load external data file for RES_API_Actions. Using Internal values."
    Write-Host $_

	$Global:REST_API_Actions = @{
		cat1 = @{
			categoryId   = "cat1"
			categoryName = "Category 1"

			actions = @{
				cat1action1 = @{
					actionId    = "cat1action1"
					actionName  = "Action 1"
					applicationData = ""
				}

				cat1action2 = @{
					actionId    = "cat1action2"
					actionName  = "Action 2"
					applicationData = ""
				}
			}
		}

		cat2 = @{
			categoryId   = "cat2"
			categoryName = "Category 2"

			actions = @{
				cat2action1 = @{
					actionId    = "cat2action1"
					actionName  = "Action 1"
					applicationData = ""
				}

				cat2action2 = @{
					actionId    = "cat2action2"
					actionName  = "Action 2"
					applicationData = ""
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



Write-Host "[GZDoom_REST] Action Categories & Definitions registered. May be overwritten." -ForegroundColor Yellow
# REST API Data Definitions for Actions ^^^^^^^^^^^^^^^^
# Function to Run on REST Action (Required)
# Put your code that performs your desired activity for this plug-in
function REST_API_Application-Specific-Action {
	#GZDoom_REST Action - Execute applicationData-based dynamic Console Command
	$local_action = $Global:REST_API_Action
	if ($Global:REST_API_Debug) { 
		Write-Host "[REST_API_Application-Specific-Action]: DEBUG - printing local action list" -ForegroundColor Gray 
		Show-ObjectProperties -Obj $Global:REST_API_Actions
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
}
Write-Host "[GZDoom_REST] REST_API_Application-Specific-Action registered. May be overwritten." -ForegroundColor Yellow
# USER AND APPLICATION SPECIFIC DATA ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


function GZDoom_REST_Startup {
	Write-Host "[GZDoom_REST_Startup] Starting up Pipe Client and HTTP Listener"
	NamedPipe_Client_Startup
	REST_Server_Startup
}
Write-Host "[GZDoom_REST] function GZDoom_REST_Startup registered" -ForegroundColor Green

function GZDoom_REST_LibraryLoaded {
    Write-Host "[GZDoom_REST_LibraryLoaded] Library Loaded and functional" -ForegroundColor Gray
}
Write-Host "[GZDoom_REST] Library Loaded" -ForegroundColor Gray
