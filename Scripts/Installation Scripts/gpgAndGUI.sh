#!/bin bash
$SCPT_HOME="../" # to be specified per file
. $SCPT_HOME/.Snippets/GlobalVariables.sh --source-only
LogInfoPre="${Green_font_prefix}[INFO]${Font_color_suffix}"
LogErrorPre="${Red_font_prefix}[ERROR]${Font_color_suffix}"
LogWarningPre="${Green_font_prefix}[WARN]${Font_color_suffix}"

not_root_user(){
 [ $(id -u) -ne 0 ]
}

if not_root_user; then
	echo "$LogErrorPre This script uses apt-get, which need root permission to run!"
	exit
fi

if which -s gpg; then
	echo "GnuPG Already Installed, do you want reinstall?"
	printf "(Y/N):"
	read MenuChoice
	if [[ $MenuChoice == "y" ]]; then
		apt-get install -yq --reinstall gnupg
	elif [[ $MenuChoice == "n" ]]; then
	elif [[ $MenuChoice == "Y" ]]; then
		apt-get install -yq --reinstall gnupg
	elif [[ $MenuChoice == "N" ]]; then
	else
		echo "Invalid input, default to no."
	fi
else
	apt-get install -yq --reinstall gnupg
fi
# KGpg is always reinstalled because no efficient to determine if it exists
apt-get install -yq --reinstall kgpg
