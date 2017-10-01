#! /bin/sh

# don't remove lines 4 and 5
echo 1 > /sys/class/gpio/Watchdog\ Disable/value
mount -o rw,remount /

# reduce disclaimer time
chmod 755 /jci/gui/apps/system/js/systemApp.js
sed -i 's/this._disclaimerTime.remaining = 3500/this._disclaimerTime.remaining = 100/g' /jci/gui/apps/system/js/systemApp.js

# disable/enable touchscreen mod: enable = mod off, disable = mod on
/jci/scripts/set_lvds_speed_restriction_config.sh disable
/jci/scripts/set_speed_restriction_config.sh disable

# turn on wi-fi
cp /mnt/sd*/config/syssettingsApp.js /jci/gui/apps/syssettings/js/

# change background image
cp /mnt/sd*/config/background.png /jci/gui/common/images/

# remove safety warning from reverse camera
cp /mnt/sd*/config/SafetyText_US_English.png /jci/nativegui/images/

# remove blank album art frame
cp /mnt/sd*/config/NowPlayingImageFrame.png /jci/gui/common/controls/NowPlaying4/images/
cp /mnt/sd*/config/NowPlayingImageFrame.png /jci/gui/common/controls/InCall2/images/


# the "Tweaks Applied" window will appear for 10 seconds and then close automatically"
/jci/tools/jci-dialog --title="Tweaks Applied" --text="Tweaks have finished running" --ok-label='OK' --no-cancel &
sleep 10
killall jci-dialog

