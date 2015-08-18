#!/system/bin/sh
# DeadB00st
# Copyright (C) 2015 deadman0
#=======================================================================#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#  You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
#=======================================================================#

mount -o remount,rw /system 2>/dev/null
/tmp/busybox mount -o remount,rw /system 2>/dev/null

Config=/system/etc/DB/SwitchesConfig.conf 

if [ -e /tmp/SwitchesConfig.conf ]; then
	/tmp/busybox rm -f /system/etc/DB/SwitchesConfig.conf
	/tmp/busybox cp /tmp/SwitchesConfig.conf /system/etc/DB/SwitchesConfig.conf 
	/tmp/busybox chmod 755 /system/etc/DB/SwitchesConfig.conf 
else
	/tmp/busybox rm -f /tmp/SwitchesConfig.conf
fi

if [ -e /tmp/Governor.conf ]; then
	/tmp/busybox rm -f /system/etc/DB/Governor.conf
	/tmp/busybox cp /tmp/Governor.conf /system/etc/DB/Governor.conf 
	/tmp/busybox chmod 755 /system/etc/DB/Governor.conf 
else
	/tmp/busybox rm -f /tmp/Governor.conf
fi

if [ -e /tmp/Cpu.conf ]; then
	/tmp/busybox rm -f /system/etc/DB/Cpu.conf
	/tmp/busybox cp /tmp/Cpu.conf /system/etc/DB/Cpu.conf 
	/tmp/busybox chmod 755 /system/etc/DB/Cpu.conf 
else
	/tmp/busybox rm -f /tmp/Cpu.conf
fi

if [ -e /tmp/Cpu/ ]; then
	/tmp/busybox rm -f /system/etc/DB/Cpu/*
	/tmp/busybox cp /tmp/Cpu/* /system/etc/DB/Cpu/
	/tmp/busybox chmod 755 /system/etc/DB/Cpu/*
else
	/tmp/busybox rm -rf /tmp/Cpu
fi


if [ "`grep SDTWEAK $Config `" ]; then
/tmp/busybox echo "OK"
else
/tmp/busybox echo "

# SD Tweaks
SDTWEAK=0" >> $Config 
fi

if [ "`grep BATTERYTWEAK $Config `" ]; then
/tmp/busybox echo "OK"
else
/tmp/busybox echo "

# Battery Tweaks
BATTERYTWEAK=0" >> $Config 
fi
if [ "`grep BLOCKFLAGTWEAK $Config `" ]; then
/tmp/busybox echo "OK"
else
/tmp/busybox echo "

# Block Flag & Cache Increase Tweak
BLOCKFLAGTWEAK=0" >> $Config 
fi

