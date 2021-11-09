#!/bin/busybox ash

. /etc/init.d/tc-functions
. /var/www/cgi-bin/pcp-functions

useBusybox
TARGET=`cat /etc/sysconfig/backup_device`
cd /mnt/$TARGET
sed -i '/hqplayer.tcz/d;/pcp-libflac.tcz/d' onboot.lst
echo hqplayer.tcz >>onboot.lst
echo pcp-libflac.tcz >>onboot.lst

cd optional
sed -i '/pcp-squeezelite.tcz/d;/rng-tools.tcz/d;/dialog.tcz/d' pcp.tcz.dep
sed -i '/glib2.tcz/d' libudev.tcz.dep
tce-load -i ca-certificates.tcz
wget https://raw.githubusercontent.com/lin-silas/pcp-hqplayer-embedded/main/hqplayer.tcz


# tc home
cd ~
wget https://raw.githubusercontent.com/lin-silas/pcp-hqplayer-embedded/main/hqp.sh
wget https://raw.githubusercontent.com/lin-silas/pcp-hqplayer-embedded/main/lms.sh
sudo chmod +x *.sh
mkdir -p ~/hqplayer/modules-load.d
mkdir -p ~/hqplayer/udev/rules.d
cd ~/hqplayer
wget https://raw.githubusercontent.com/sam0402/pCP-addon/main/HQPlayer/hqplayerd.xml
wget https://raw.githubusercontent.com/sam0402/pCP-addon/main/HQPlayer/hqplayerd-auth.xml
pcp_write_var_to_config USER_COMMAND_1 "hqp.sh"

echo "Rebooting..."
sleep 3
pcp br
