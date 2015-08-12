#!/system/bin/sh
# DeadB00st 
# Copyright (C) 2015 deadman0
#=======================================================================#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or (at your eoption) any later version.
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#  You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
#=======================================================================#

. /tmp/backuptool.functions

list_files() {
cat <<EOF

bin/d0cleaner
bin/DB
bin/DBBoostMenu
bin/DBBuildProp
bin/DBTrimMenu
bin/DBCheck
bin/DBSwitches
bin/dboost
bin/dram
bin/dstrim
bin/lightram
bin/modram


etc/DB/DBChangelog
etc/DB/SwitchesConfig.conf
etc/DB/ADBlock/adblock
etc/DB/ADBlock/hosts
etc/DB/Log


etc/init.d/d0cleaner
etc/init.d/01dinitlogcleaner
etc/init.d/dgapps
etc/init.d/dmedia
etc/init.d/dstrim

xbin/busybox

EOF
}

case "$1" in

backup)
list_files | while read FILE DUMMY; do
backup_file $S/$FILE

done

;;
restore)

list_files | while read FILE REPLACEMENT; do
R=""
[ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
[ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R

done

;;
pre-backup)

;;
post-backup)

;;
pre-restore)

;;
post-restore)

chmod 755 /system/bin/boost
chmod 755 /system/bin/cputuner
chmod 755 /system/bin/dnsmasq
chmod 755 /system/bin/entro
chmod 755 /system/bin/rngd
chmod 755 /system/bin/linker
chmod 000 /system/bin/linker.bak
chmod 755 /system/bin/haveged
chmod 755 /system/bin/cleanup
chmod 755 /system/bin/zealot
chmod 755 /system/bin/changelog
chmod 755 /system/bin/dnsmasq_off
chmod 755 /system/bin/dnsmasq_on
chmod 755 /system/bin/entro_on
chmod 755 /system/bin/entro_off
chmod 755 /system/bin/killjoy
chmod 755 /system/bin/uninstall
chmod 755 /system/bin/haveged
chmod 755 /system/bin/entro
chmod 755 /system/bin/rngd
chmod -R 755 /system/cputuner
chmod -R 755 /system/cputuner/bigbooty
chmod -R 755 /system/cputuner/governors
chmod -R 755 /system/cputuner/maxfreqs
chmod -R 755 /system/cputuner/minfreqs
chmod -R 755 /system/cputuner/schedulers
chmod 644 /system/lib/egl/egl.cfg
chmod 000 /system/lib/egl/egl.cfg.bak
chmod 000 /system/lib/egl/egl.cfg.okj
chmod 644 /system/lib/egl/libGLES_android.so
chmod 000 /system/lib/egl/libGLES_android.so.bak
chmod 000 /system/lib/egl/libGLES_android.so.okj
chmod -R 755 /system/boost
chown -R 0.2000 /system/boost
chmod -R 755 /system/boost/other
chown -R 0.2000 /system/boost/other
chmod -R 755 /system/boost/cleanup
chown -R 0.2000 /system/boost/cleanup
chmod -R 755 /system/etc/dnsmasq
chown -R 0.2000 /system/etc/dnsmasq
chmod -R 755 /system/etc/init.d
chown -R 0.2000 /system/etc/init.d
chmod -R 755 /system/etc/busybox_cron
chown -R 0.2000 /system/etc/busybox_cron
chmod 6755 /system/etc/busybox_cron/busybox
chown 0.2000 /system/etc/busybox_cron/busybox
chmod 644 /system/etc/gps.conf
chmod 000 /system/etc/gps.conf.bak
chmod 000 /system/etc/gps.conf.okj
chmod 644 /system/etc/hosts
chmod 000 /system/etc/hosts.bak
chmod 000 /system/etc/hosts.okj
chmod 644 /system/etc/rinetd.conf
chmod 644 /system/etc/changelog-okj.txt
chmod 644 /system/etc/dnsmasq.conf
chmod 644 /system/etc/tiwlan.ini
chmod 000 /system/etc/tiwlan.ini.bak
chmod 000 /system/etc/tiwlan.ini.okj
chmod 644 /system/etc/wifi/tiwlan.ini
chmod 000 /system/etc/wifi/tiwlan.ini.bak
chmod 000 /system/etc/wifi/tiwlan.ini.okj
chmod 6755 /system/xbin/busybox
chmod 6755 /system/xbin/zipalign
chmod 6755 /system/xbin/sqlite3
chmod 755 /system/xbin/haveged
chmod 755 /system/xbin/entro
chmod 755 /system/xbin/rngd
chmod 755 /system/xbin/mount.sh
chmod 755 /system/xbin/umount.sh

;;

esac
