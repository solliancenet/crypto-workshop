#Disable-InternetExplorerESC

function InstallCryptoTools()
{
  npm install -g yarn
  npm install -g lerna
  npm i chai -D
  npm i mocha -D
  npm install --save-dev hardhat
  npm install --save-dev typechain
  npm install --save-dev ethers
  npm install --save-dev ethereum-waffle
  npm install --save-dev solhint
  npm install --save-dev prettier prettier-plugin-solidity
  npm install --save-dev solidity-coverage
  npm install -g truffle
  npm install @openzeppelin/contracts

}

function DisableInternetExplorerESC
{
  $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
  $UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
  Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0 -Force -ErrorAction SilentlyContinue -Verbose
  Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0 -Force -ErrorAction SilentlyContinue -Verbose
  Write-Host "IE Enhanced Security Configuration (ESC) has been disabled." -ForegroundColor Green -Verbose
}

#Enable-InternetExplorer File Download
function EnableIEFileDownload
{
  $HKLM = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
  $HKCU = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3"
  Set-ItemProperty -Path $HKLM -Name "1803" -Value 0 -ErrorAction SilentlyContinue -Verbose
  Set-ItemProperty -Path $HKCU -Name "1803" -Value 0 -ErrorAction SilentlyContinue -Verbose
  Set-ItemProperty -Path $HKLM -Name "1604" -Value 0 -ErrorAction SilentlyContinue -Verbose
  Set-ItemProperty -Path $HKCU -Name "1604" -Value 0 -ErrorAction SilentlyContinue -Verbose
}

function ConfigurePhp($iniPath)
{
    $content = get-content $iniPath;

    $content = $content.replace(";extension=curl","extension=curl");
    $content = $content.replace(";extension=fileinfo","extension=fileinfo");
    $content = $content.replace(";extension=mbstring","extension=mbstring");
    $content = $content.replace(";extension=openssl","extension=openssl");
    $content = $content.replace(";extension=pdo_mysql","extension=pdo_mysql");

    set-content $iniPath $content;
}

Start-Transcript -Path C:\WindowsAzure\Logs\CloudLabsCustomScriptExtension.txt -Append

[Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" 

mkdir "c:\temp" -ea SilentlyContinue;
mkdir "c:\labfiles" -ea SilentlyContinue;

#download the solliance pacakage
$WebClient = New-Object System.Net.WebClient;
$WebClient.DownloadFile("https://raw.githubusercontent.com/solliancenet/common-workshop/main/scripts/common.ps1","C:\LabFiles\common.ps1")
$WebClient.DownloadFile("https://raw.githubusercontent.com/solliancenet/common-workshop/main/scripts/httphelper.ps1","C:\LabFiles\httphelper.ps1")
$WebClient.DownloadFile("https://raw.githubusercontent.com/solliancenet/common-workshop/main/scripts/rundeployment.ps1","C:\LabFiles\rundeployment.ps1")

#run the solliance package
. C:\LabFiles\Common.ps1
. C:\LabFiles\HttpHelper.ps1

Set-Executionpolicy unrestricted -force

DisableInternetExplorerESC

EnableIEFileDownload

EnableDarkMode

SetFileOptions

InstallChocolaty

InstallAzPowerShellModule

InstallChrome

InstallNotepadPP

InstallGit
        
InstallAzureCli

InstallNodeJS

choco install openssl

$extensions = @(
  "ms-vscode-deploy-azure.azure-deploy", 
  "ms-azuretools.vscode-docker", 
  "ms-python.python", 
  "ms-azuretools.vscode-azurefunctions", 
  "eg2.vscode-npm-script",
  "kodebox.solidity-language-server",
  "JuanBlanco.solidity");

InstallVisualStudioCode $extensions;

InstallVisualStudio "community"

InstallFiddler

InstallGanache

#to add the user to docker group
$global:localusername = "wsuser";

InstallDockerDesktop $global:localusername

Uninstall-AzureRm -ea SilentlyContinue

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

cd "c:\labfiles";

$branchName = "main";
$workshopName = "crypto-workshop";
$repoUrl = "solliancenet/$workshopName";

#download the git repo...
Write-Host "Download Git repos." -ForegroundColor Green -Verbose

git clone https://github.com/solliancenet/$workshopName.git $workshopName

git clone https://github.com/paulrberg/solidity-template

Stop-Transcript