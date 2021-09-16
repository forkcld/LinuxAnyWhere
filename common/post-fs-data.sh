#!/system/bin/sh
##################################################################
#Warrant:	GPLv3
#Author:	gunterwei
#Main:		gunterwei@gmail.com
#Date:		Sun Sep  5 23:14:04 CST 2021
##################################################################
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
#user add
export INSTALL_PREFIX="$MODDIR"
export PATH="$INSTALL_PREFIX/bin"
up_linux{ 
    for file in "$INSTALL_PREFIX/etc/system.up.list.d"/*; do
	    [[ -f "$file" ]] && /system/bin/sh -c "sleep 30; linux-base-chrootrc ${file##*/}" &
    done
}
up_linux >/data/local/tmp/linux-base.$(date "+%F_%H-%M-%S").log 2>/data/local/tmp/linux-base.$(date "+%F_%H-%M-%S").log
