RESTORE='\033[0m'

RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'

LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'

export ARCH=arm64
export SUBARCH=arm64
export PATH="$HOME/toolchains/clang/bin:$HOME/toolchains/arm64/bin:$HOME/toolchains/arm/bin:<:${PATH}"
export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export CLANG_TRIPLE=aarch64-linux-gnu-
export CC=clang
export AR=lvm-ar
export LD=ld
export RANLIB=llvm-ranlib
export STRIP=llvm-strip
export AS=CLANG_TRIPLE
export CXX=clang++
mkdir out
defconfiglist=$(ls ./arch/arm64/configs/)
echo  -e ${LGREEN} $defconfiglist
echo -e ${WHITE} "Introduzca el nombre de su defconfig"
read defconfig
make $defconfig menuconfig O=out
make CC=clang -j$(($(nproc --all)*2)) O=out
