powershell.exe -Command "Invoke-WebRequest -OutFile ./master.zip https://github.com/Ludeon/RimWorld-ru/archive/master.zip
powershell.exe "Add-Type -A 'System.IO.Compression.FileSystem';[IO.Compression.ZipFile]::ExtractToDirectory('master.zip', '1');"
RD /s /q "Data\Core\Languages\Russian (���᪨�)\"
RD /s /q "Data\Royalty\Languages\Russian (���᪨�)\"
RD /s /q "Data\Ideology\Languages\Russian (���᪨�)\"
del "Data\Royalty\Languages\Russian (���᪨�).tar"
del "Data\Core\Languages\Russian (���᪨�).tar"
del "Data\Ideology\Languages\Russian (���᪨�).tar"
xcopy "1\RimWorld-ru-master\Core" "Data\Core\Languages\Russian (���᪨�)\"  /H /Y /C /R /S
xcopy "1\RimWorld-ru-master\Royalty" "Data\Royalty\Languages\Russian (���᪨�)\"  /H /Y /C /R /S
xcopy "1\RimWorld-ru-master\Ideology" "Data\Ideology\Languages\Russian (���᪨�)\"  /H /Y /C /R /S
RD /s /q 1
del master.zip