##Blinking timers

##Removing score
scoreboard players remove @a[tag=needs_costume] blink 1

##Toggling blink for those who need it
execute as @a[tag=needs_costume,scores={blink=..0},tag=!pause_needs_costume] at @s run function fighter:costume/blink/toggle_blink