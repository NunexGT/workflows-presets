setlocal
cd /d %~dp0
:: Install UIAutomation
cd UIAutomation.0.8.7B3.NET40
xcopy UIAutomation.dll C:\Windows\System32
::Add Your Programs to Path
::Spotify, Ubuntu WSL,...
setx PATH "%PATH%;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps"
::OperaGX
setx PATH "%PATH%;C:\Users\Nuno Miguel\AppData\Local\Programs\Opera GX"
::DaVinci Resolve
setx PATH "%PATH%;C:\Program Files\Blackmagic Design\DaVinci Resolve"
