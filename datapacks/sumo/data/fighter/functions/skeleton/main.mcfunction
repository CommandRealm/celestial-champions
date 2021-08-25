##Called whenever a player is using the skeleton

##Arrow particles
execute at @e[type=arrow,tag=skeleton_arrow] run particle block bone_block ~ ~ ~ 0 0 0 0 1

##Skeleton toss
execute as @e[type=skeleton,tag=skeleton_tp,nbt={OnGround:1b},scores={death_timer=..90}] at @s run function fighter:skeleton/tossed_skeleton_on_ground