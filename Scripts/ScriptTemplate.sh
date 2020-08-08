#!/bin bash
$SCPT_HOME="." # to be specified per file
. $SCPT_HOME/.Snippets/GlobalVariables.sh --source-only
LogInfoPre="${Green_font_prefix}[INFO]${Font_color_suffix} " 
LogErrorPre="${Red_font_prefix}[ERROR]${Font_color_suffix} " 
LogWarningPre="${Green_font_prefix}[WARN]${Font_color_suffix} "

main_menu(){
	echo -e "What do you want to do?
    0. Quit (Default)
    1. Choice 1
    2. Choice 2"
    printf "Please choose one:"
    read MenuChoice
	if [[ $MenuChoice == "1" ]]; then
		echo "choosed 1"
	elif [[ $MenuChoice == "2" ]]; then
		echo "choosed 2"
	else
		exit
	fi
}

# # Does a command exist?
# if which -s command_name; then
# # command_exist
# else
# # command_dne
# fi