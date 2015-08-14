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

/tmp/busybox cp /system/etc/DB/SwitchesConfig.conf /tmp/SwitchesConfig.conf
/tmp/busybox chmod 755 /tmp/SwitchesConfig.conf

/tmp/busybox cp /system/etc/DB/Governor.conf /tmp/Governor.conf
/tmp/busybox chmod 755 /tmp/Governor.conf