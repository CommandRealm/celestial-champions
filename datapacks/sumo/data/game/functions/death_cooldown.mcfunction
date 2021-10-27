##Function for if players are waiting to be respawned

##Time to play sound and update title
execute as @a[tag=playing,scores={death_cooldown=100}] at @s run function game:death_cooldown_update
execute as @a[tag=playing,scores={death_cooldown=80}] at @s run function game:death_cooldown_update
execute as @a[tag=playing,scores={death_cooldown=60}] at @s run function game:death_cooldown_update
execute as @a[tag=playing,scores={death_cooldown=40}] at @s run function game:death_cooldown_update
execute as @a[tag=playing,scores={death_cooldown=20}] at @s run function game:death_cooldown_update


##Timer counting down
scoreboard players remove @a[tag=playing,scores={death_cooldown=1..}] death_cooldown 1

##Calling final function
execute as @a[tag=playing,scores={death_cooldown=0}] at @s run function game:respawn

