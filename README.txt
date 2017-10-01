*tested on v55.00.753A North America*

Copy all files from the MASTER folder to the root of a blank FAT32 flash drive.
(Don't copy the folder itself, just the stuff inside)
	--config (folder)
	--4 files

Unplug any other USB or SD from the car except this drive.
Turn on the car and wait for the "Tweaks Applied" window to appear (could be 20-30 sec)

**Change what mods get applied by modifying tweaks.sh**

*Use Notepad++ with the EOL Conversion set to UNIX/OSX* (in the Edit menu)

Each tweak is commented to indicate the corresponding lines of code and separated by a blank line.
Just remove the block of code for the tweaks you don't want.

Replace background.png inside the config folder with your own 800x480 .png if you want to use your own image.

**YOU MUST RESTART THE SYSTEM FOR THE TWEAKS
TO APPLY BY HOLDING DOWN BACK+MUTE+NAV FOR A FEW SECONDS****


Here are the tweaks currently set to activate (in order):

--reduce disclaimer from 3.5 sec to 0.1 sec
--enable the touchscreen while moving (causes the compass to stop changing direction)
--turn on wi-fi
--change the background image
--remove the safety warning label from the reverse camera
--remove the blank album art frame
