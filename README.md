# Brightness Tool for Arch Linux

This shell script allows you to change your screen brightness to a specific value,
and it's even more helpfull, if your xbacklight command doesn't work properly.
(I noticed that issue on some laptops)

## Description

You can set the brightness of your screen by simply typing:

´´´
$ setbrightness <value>
´´´
Where *value* is your brightness level as number.


You can also add an amount of levels to your brightness by typing:

´´´
$ setbrightness +<value>
´´´
or decrease the value:

´´´
$ setbrightness -<value>
´´´

## Installation

The only thing you need to do is to add the "setbrightness.sh" file to your path 
(meaning /usr/local/bin/, or /usr/bin/, or some other path on your $PATH variable)
If you like, you can remove the ".sh" extension.

If you've got any problems, let me know!

