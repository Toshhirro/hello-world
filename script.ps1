

if(!(Test-Path -Path "C:\Users\Abby\Pictures\Camera Roll\sample.png")){
copy-item -path "\\wsehyd-applib\ae\Scratch\toshirro\sample.png" -destination "C:\Users\Abby\Pictures\Camera Roll"}

if(!(Test-Path -Path C:\Users\Abby\Documents\sample.pdf)){
copy-item -path "\\wsehyd-applib\ae\Scratch\toshirro\sample.pdf" -destination "C:\Users\Abby\Documents"}

if(!(Test-Path -Path C:\Users\Abby\Videos\sample.mp4)){
copy-item -path "\\wsehyd-applib\ae\Scratch\toshirro\sample.mp4" -destination "C:\Users\Abby\Videos"}

if(!(Test-Path -Path C:\Users\Abby\Music\sample.mp3)){
copy-item -path "\\wsehyd-applib\ae\Scratch\toshirro\sample.mp3" -destination "C:\Users\Abby\Music"}

if(!(Test-Path -Path C:\sample\sample.txt)){
New-Item -path 'C:\' -Name "sample" -ItemType Directory
Copy-Item -path "\\wsehyd-applib\ae\Scratch\toshirro\sample.txt" -Destination 'C:\sample'}


(get-Item -path "c:\sample\sample.txt").Encrypt()


$newPath = 'C:\sample'  
$key1 = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"  
$key2 = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"  
set-ItemProperty -path $key1 -name Desktop $newPath  
set-ItemProperty -path $key2 -name Desktop $newPath

Start-Sleep -Seconds 5

Restart-computer

