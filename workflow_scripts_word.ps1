Import-Module C:\Windows\System32\UIAutomation-Powershell-Net40\UIAutomation.dll
 Add-Type -AssemblyName System.Windows.Forms
 Add-Type -AssemblyName UIAutomationClient
 Add-Type -MemberDefinition $sig -name NativeMethods -namespace Win32
 $sig = '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);'
 $process_name = "winword"
 $costum_wait_secs = 6
 #this script assumes all monitors are 1080p (because i dont have 4k monitors)
 #first monitor is monitor 0
 $monitors_width = 1920
 $monitor_no = 0
 $y = 1
 $x = $monitor_no*$monitors_width + 10
 Start-Process $process_name
 Start-Sleep -Seconds 4
 $hwnd = @(Get-Process $process_name)[0].MainWindowHandle
 #get window into normal state
 [Win32.NativeMethods]::ShowWindowAsync($hwnd, 9)
 Start-Sleep -Seconds 5
 $w = Get-UIAWindow -ProcessName $process_name
 $w.Move($x, $y)
 # Maximize Window (index:3)
 [Win32.NativeMethods]::ShowWindowAsync($hwnd, 3)
