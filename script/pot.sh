#!/usr/bin/env bash
repo="lihsh/potential/PBE"
if [ -f POTCAR ];then
 mv -f POTCAR old-POTCAR
 echo "******New POTCAR generated******"
fi
for i in $*
do
 cat /public/home/$repo/$i/POTCAR >>POTCAR
done
#cat  ~/potential/PBE/Sn/POTCAR ~/potential/PBE/O/POTCAR >POTCAR
cp /public/home/lihsh/script/POTCAR ~/src 
