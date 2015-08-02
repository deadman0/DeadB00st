#!/system/bin/sh
# L SPEED MOD
# Copyright (C) 2015 Paget96
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


for f in $(busybox find /system/xbin -type l); do
  rsl=$(busybox readlink $f)
  if echo "$rsl" | busybox grep -q busybox; then
    busybox rm $f
  fi
done

/tmp/busybox rm -f /system/xbin/busybox
