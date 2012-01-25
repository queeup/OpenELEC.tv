#!/bin/sh

USB2=`cat /proc/acpi/wakeup | grep USB2 | awk {'print $3}'`
PS2K=`cat /proc/acpi/wakeup | grep PS2K | awk {'print $3}'`
if [ "$USB2" = "*enabled" ]; then
	echo USB2 > /proc/acpi/wakeup
fi
if [ "$PS2K" = "*enabled" ]; then
	echo PS2K > /proc/acpi/wakeup
fi

echo -1 >/sys/module/usbcore/parameters/autosuspend
