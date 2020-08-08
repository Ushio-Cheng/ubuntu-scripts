#!/bin bash
$SCPT_HOME="../"
. $SCPT_HOME/.Snippets/GlobalVariables.sh --source-only
LogInfoPre="${Green_font_prefix}[INFO]${Font_color_suffix} " 
LogErrorPre="${Red_font_prefix}[ERROR]${Font_color_suffix} " 
LogWarningPre="${Green_font_prefix}[WARN]${Font_color_suffix} "



# script config
default_theme_to_download="https://github.com/lifepillar/vim-solarized8.git"


not_root_user(){
 [ $(id -u) -ne 0 ]
}

if not_root_user; then
	echo "$LogErrorPre This script uses apt-get, which need root permission to run!"
	exit
fi

apt-get install -y fonts-powerline
apt install -y vim
cd $INSTALLER_HOME_DIR
mkdir .vim
mkdir .vim/bundle
mkdir .vim/autoload
mkdir .vim/pack
mkdir .vim/pack/themes
mkdir .vim/pack/themes/opt
popd
cd $INSTALLER_HOME_DIR/.vim/pack/themes/opt
theme_to_download=$default_theme_to_download
git clone $theme_to_download
popd
cd $INSTALLER_HOME_DIR/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/ycm-core/YouCompleteMe
popd
# Install YCM
cd $INSTALLER_HOME_DIR/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer --cs-completer --go-completer --ts-completer --rust-completer
popd

npm -g install instant-markdown-d