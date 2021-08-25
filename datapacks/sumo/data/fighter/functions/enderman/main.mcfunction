##Called when a player is playing as the enderman

##Summoning area effect clouds for teleportation purposes
execute as @a[tag=is_fighter,scores={fighter=6,ability_timer=..60},gamemode=adventure] at @s run function fighter:enderman/summon_warp_spot