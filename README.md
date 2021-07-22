# tugascript-clang
script para compilar kernel aosp con clang 

despues de tener tu entonrno de compilacion creado este script puede facilitarte muchas cosas si eres novato como yo

no esta de mas decir que es para arquitectura arm64

puedes cambiar esta parte del codigo para que coincida con tu arquitectura

export ARCH=arm64
export SUBARCH=arm64

este script es para compilar kernel aosp con clang probablemente como yo no sepas donde conseguir las toolchains correctas
aca te dejo los enlaces para descargar las herramientas

clang
https://github.com/kdrag0n/proton-clang/releases

binutils linaro aarch64
arm64 https://releases.linaro.org/components/toolchain/binaries/latest-7/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar.xz

binutils linaro arm
https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz


descompirme el contenido de cada archivo descargado de la siguiente manera

clang
$HOME/toolchains/clang/

binutils aarch64
$HOME/toolchains/arm64/

binutils arm
$HOME/toolchains/arm/

uso del script
solo hay que darle el permisos de ejecucion
abres una terminal en el directorio root de tu kernel a compilar
puedes arrastrar el archivo del script a la terminal y ejecutarlo no es necesario que este dentro del directorio de tu kernel



al comienzo te preguntara el nombre de tu defconfig para compilar y te mostrara los archivos que tengas disponibles
para otras arquitecturas modifica esta parte del script

defconfiglist=$(ls ./arch/arm64/configs/)
solo para que te deje visualizar los archivos que tengas en esa ruta 


al seleccionar tu defconfig te abrira una interfaz en la terminal para modificar parametros del kernel si no tienes nada mas que cambiar solo guarda el archivo y sal 
el kernel comenzara a compilarse en una carpeta llamada out dentro del directorio de la fuente de tu kernel
si se detuvo la compilacion no es necesario escribir de nuevo tu defconfig solo pulsa enter y ocupara el que tengas guardado dentro de la carpeta out (.config un archivo oculto)



espero les sea de ayuda como a mi que nadie me brindo este tipo de informacion tan basica por que todos los gringos son mierdas y culeros :D espero mejorar en un futuro este script 
