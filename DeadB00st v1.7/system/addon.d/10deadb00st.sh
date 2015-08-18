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
bin/DBGovernors
bin/DBCheck
bin/DBCpu
bin/DBSwitches
bin/dboost
bin/dram
bin/dstrim
bin/lightram
bin/modram


etc/DB/DBChangelog
etc/DB/SwitchesConfig.conf
etc/DB/Governor.conf
etc/DB/Cpu.conf
etc/DB/ADBlock/adblock
etc/DB/ADBlock/hosts
etc/DB/Log


etc/init.d/d0cleaner
etc/init.d/01dinitlogcleaner
etc/init.d/dGovernorTweaks
etc/init.d/dgapps
etc/init.d/dcpu
etc/init.d/dmedia
etc/init.d/dstrim
etc/init.d/dblockflag
etc/init.d/dbatterytweak
etc/init.d/dsdtweak

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

chmod 755 /system/bin/DB
chmod 755 /system/bin/d0cleaner
chmod 755 /system/bin/DBBoostMenu
chmod 755 /system/bin/DBTrimMenu
chmod 755 /system/bin/DBBuildProp
chmod 755 /system/bin/DBCheck
chmod 755 /system/bin/DBSwitches
chmod 755 /system/bin/DBGovernors
chmod 755 /system/bin/dram
chmod 755 /system/bin/lightram
chmod 755 /system/bin/modram
chmod 755 /system/bin/dboost
chmod -R 755 /system/etc/init.d
chown -R 0.2000 /system/etc/init.d
chmod -R 755 /system/etc/DB
chown -R 0.2000 /system/etc/DB
chmod 6755 /system/xbin/busybox

;;

esac
