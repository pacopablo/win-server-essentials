msiexec /qn /i 7z920-x64.msi
msiexec /qn /i ActivePython-2.7.2.5-win64-x64.msi
msiexec /qn /i GoogleChromeStandaloneEnterprise.msi
npp.6.1.1.Installer.exe /S
Git-1.7.10-preview20120409.exe /sp- /verysilent
bginfosetup.exe /sp- /verysilent
putty-0.62-installer.exe /sp- /verysilent /group="Accessories\PuTTY"
IF /i "%Processor_Architecture%"=="x86" setx /m PATH "%PATH%;C:\Program Files\PuTTY"
IF /i "%Processor_Architecture%"=="AMD64" setx /m PATH "%PATH%;C:\Program Files (x86)\PuTTY"
gvim-7.3-480.exe /S
REG ADD HKEY_CLASSES_ROOT\*\shell\vim /ve /f /d "Edit with &Vim"
IF /i "%Processor_Architecture%"=="x86" REG ADD HKEY_CLASSES_ROOT\*\shell\vim\command /ve /f /d "\"C:\\Program Files\\Vim\\vim73\\gvim.exe\" \"%%1\""
IF /i "%Processor_Architecture%"=="AMD64" REG ADD HKEY_CLASSES_ROOT\*\shell\vim\command /ve /f /d "\"C:\\Program Files (x86)\\Vim\\vim73\\gvim.exe\" \"%%1\""
IF /i "%Processor_Architecture%"=="x86" "C:\Program Files\Vim\vim73\gvim.exe" -silent -register
IF /i "%Processor_Architecture%"=="AMD64" "C:\Program Files (x86)\Vim\vim73\gvim.exe" -silent -register
