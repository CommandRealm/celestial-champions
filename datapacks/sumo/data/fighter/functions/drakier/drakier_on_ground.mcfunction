##Called when drakier is on the ground

##Removing pause random cooldown tag for elytra
tag @a[scores={fighter=8},tag=pause_random_cooldown,nbt={OnGround:1b},tag=is_fighter,gamemode=adventure,tag=!slow_falling_until_landing] remove pause_random_cooldown

scoreboard players set @a[scores={fighter=8,random_cooldown=30..},nbt={OnGround:1b},tag=is_fighter,gamemode=adventure,tag=!slow_falling_until_landing] random_cooldown 5

##Starting firework cooldown
##tag @a[scores={fighter=8},tag=pause_random_cooldown2,nbt={OnGround:1b},tag=is_fighter,gamemode=adventure,tag=!slow_falling_until_landing] remove pause_random_cooldown2

##Stop flying
execute as @a[scores={fighter=8,random_stat=1..},nbt={OnGround:1b},tag=is_fighter,gamemode=adventure,tag=!slow_falling_until_landing] at @s run function fighter:drakier/stop_flying