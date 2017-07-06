$nvimConfigDir = "$HOME\AppData\Local\nvim\"
$nvimAutoloadDir = $nvimConfigDir + "autoload"
$nvimBundleDir = $nvimConfigDir + "bundle"
$pathogenFilePath = $nvimAutoloadDir + "\pathogen.vim"

if ((Test-Path $nvimAutoloadDir) -eq $false) {
    New-Item $nvimAutoloadDir -ItemType directory
}

if ((Test-Path $nvimBundleDir) -eq $false) {
    New-Item $nvimBundleDir -ItemType directory
}

$downloadCommand = "Invoke-WebRequest -Uri `"https://tpo.pe/pathogen.vim`" -Outfile `"$pathogenFilePath`""
iex $downloadCommand
