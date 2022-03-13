echo "Making necessary folders..."
mkdir scripts
mkdir scripts\table
mkdir scripts\txt

echo "Copying txt files from GameServer"
copy .\GameServer\resource\*.txt .\scripts\table\

echo "Compiling txt files to bin files"
system\game.exe startgame table_bin

echo "Copying bin files to GameServer"
copy scripts\table\*.bin GameServer\resource\

echo "Cleaning up"
rmdir /s /q scripts
rmdir /s /q log
rmdir /s /q logfile
pause