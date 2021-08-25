##Called to spike players and remove the egg

execute as @a[distance=..5,gamemode=adventure,tag=is_fighter] at @s unless entity @s[scores={calculate=0}] run function fighter:chicken/spike

##Kill
kill @e[type=egg,tag=temporary_tag]