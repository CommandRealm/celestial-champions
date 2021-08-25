##Called by a dropped ender chest item.

##Resetting screen
execute as @a[distance=..2] at @s run function lobby:chest_menu/reset_screen

##Kill
kill @s