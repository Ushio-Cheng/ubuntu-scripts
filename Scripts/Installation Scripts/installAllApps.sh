#!/bin bash
$SCPT_HOME="../"
. $SCPT_HOME/.Snippets/GlobalVariables.sh --source-only
LogInfoPre="${Green_font_prefix}[INFO]${Font_color_suffix} " 
LogErrorPre="${Red_font_prefix}[ERROR]${Font_color_suffix} " 
LogWarningPre="${Green_font_prefix}[WARN]${Font_color_suffix} "


not_root_user(){
 [ $(id -u) -ne 0 ]
}

if not_root_user; then
	echo "$LogErrorPre This script uses apt, which need root permission to run!"
	exit
fi

snap install telegram-desktop
snap install discord
snap install filezilla
snap install chromium
snap install keybase
snap install mailspring
snap install insomnia
snap install vlc
snap install code
snap install intellij-idea-ultimate
snap install pycharm-professional
snap install clion
snap install webstorm
snap install phpstorm
snap install datagrip
snap install okular
snap install wine-platform-5-stable