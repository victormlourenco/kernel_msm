if [ $# -gt 0 ]; then
echo $1 > .version
fi
 
make ARCH=arm CROSS_COMPILE=/home/victor/uber/scripts/out/arm-linux-androideabi-4.9-cortex-a15/bin/arm-linux-androideabi- zImage -j6
 
cp arch/arm/boot/zImage ~/anykernel-mako/
 
cd ~/anykernel-mako/
 
zipfile="RedKernel-rXXX-MAKO.zip"
echo "making zip file"
cp zImage zip/kernel/
 
cd zip/
rm -f *.zip
zip -r $zipfile *
rm -f /tmp/*.zip
cp *.zip /tmp
