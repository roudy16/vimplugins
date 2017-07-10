nvimConfigDir=~/.config/nvim
nvimAutoloadDir=${nvimConfigDir}/autoload
nvimBundleDir=${nvimConfigDir}/bundle
pathogenFilePath=${nvimAutoloadDir}/pathogen.vim

if [ ! -d "$nvimAutoloadDir" ]; then
    mkdir -p $nvimAutoloadDir/
fi
if [ ! -d "$nvimBundleDir" ]; then
    mkdir -p $nvimBundleDir/
fi

curl -LSso $pathogenFilePath https://tpo.pe/pathogen.vim
