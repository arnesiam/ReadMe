#PowerShell Script: Process Monitoring and Security Check
#Description: Retrieves information about running processes and checks for suspicious activity.

#Get a list of all processes
$process = Get-Process

#Iterate through each process
foreach ($process in $process) {
    $processName = $process.$processName
    $processID = $prcoess.$processID
    $processPath =$process.Path

    #Check if the process path is empty (system process)
    If ([string]::IsNullorEmpty($processPath)) {
        Write-Host "System process detected: $processName (PID: $processID)"
    } else {
        #Check if the process path is outside common directories (potential suspicious activity)
        $commonDirs = @("C :\Windows", "C:\Program Files", "C:\Program Files (x86)")
    if ($commonDirs -notcontains $processPath.Substring(0, 3)) {
        Write-Host "Suspicious process detected: $processName (PID: $processId)
        at $processPath"
                }
           }
        }  
    
    #Additional checks can be added (e.g., network connections, load modules, etc.)

    #End of Script