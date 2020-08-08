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

add-apt-repository ppa:inkscape.dev/stable
add-apt-repository ppa:dawidd0811/neofetch
add-apt-repository ppa:font-manager/staging
add-apt-repository ppa:hluk/copyq
add-apt-repository ppa: qr-tools-developers/qr-tools-stable
add-apt-repository ppa:bashtop-monitor/bashtop
add-apt-repository ppa:indicator-multiload/stable-daily
apt-get update
apt install -y gnupg ca-certificates
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list
apt-get update
apt-get upgrade -y
apt-get install -y build-essential
apt-get install -y make
apt-get install -y cmake
apt-get install -y python3-dev
apt-get install -y scons
apt-get install -y curl
apt-get install -y git
apt-get install -y ruby
apt-get install -y autoconf
apt-get install -y automake
apt-get install -y autoconf-archive
apt-get install -y gettext
apt-get install -y libtool
apt-get install -y flex
apt-get install -y bison
apt-get install -y libbz2-dev
apt-get install -y libcurl4-openssl-dev
apt-get install -y libexpat-dev
apt-get install -y libncurses-dev
apt-get install -y gimp
apt-get install -y synaptic
apt-get install -y sass
apt-get install -y sassc
apt-get install -y inkscape
apt-get install -y neofetch
apt-get install -y font-manager
apt-get install -y copyq
apt-get install -y qtqr
apt install -y bashtop
apt install -y mono-devel
apt install -y golang-go
apt-get install -y nodejs
apt-get install -y npm
apt-get install -y clangd-9
apt-get install -y pandoc
apt install -y indicator-multiload