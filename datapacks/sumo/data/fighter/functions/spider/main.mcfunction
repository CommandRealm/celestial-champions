##Called whenever the spider fighter is selected.

##Spider friend tp
execute as @e[type=spider,tag=spider_friend,scores={death_timer=110}] at @s run function fighter:spider/spider_friend_tp
execute as @e[type=spider,tag=spider_friend,scores={death_timer=102}] at @s run function fighter:spider/apply_motion

##Checking if the player should have a shulker box under their feet
scoreboard players set @a[tag=is_fighter,scores={fighter=4},nbt={OnGround:0b},gamemode=adventure] calculate 0

##Adding score
execute as @a[tag=is_fighter,scores={fighter=4},nbt={OnGround:0b},gamemode=adventure] at @s unless block ~ ~0.75 ~1 #minecraft:spider_spawnable run scoreboard players add @s calculate 1
execute as @a[tag=is_fighter,scores={fighter=4},nbt={OnGround:0b},gamemode=adventure] at @s unless block ~ ~0.75 ~-1 #minecraft:spider_spawnable run scoreboard players add @s calculate 1
execute as @a[tag=is_fighter,scores={fighter=4},nbt={OnGround:0b},gamemode=adventure] at @s unless block ~1 ~0.75 ~ #minecraft:spider_spawnable run scoreboard players add @s calculate 1
execute as @a[tag=is_fighter,scores={fighter=4},nbt={OnGround:0b},gamemode=adventure] at @s unless block ~-1 ~0.75 ~ #minecraft:spider_spawnable run scoreboard players add @s calculate 1



##Checking if should summon shulker
execute as @a[tag=is_fighter,scores={fighter=4,calculate=1..},nbt={OnGround:0b},gamemode=adventure,tag=!spawned_spider_shulker] at @s if block ~ ~ ~ #minecraft:spider_spawnable if block ~ ~-1 ~ #minecraft:spider_spawnable if block ~ ~-2 ~ #minecraft:spider_spawnable if block ~ ~-3 ~ #minecraft:spider_spawnable run function fighter:spider/attempt_to_summon_shulker


##Removing summoned spider shulker tag
execute as @a[tag=is_fighter,scores={fighter=4},nbt={OnGround:1b},gamemode=adventure,tag=spawned_spider_shulker] at @s positioned ~ ~-0.5 ~ unless entity @e[type=shulker,tag=spider_platform,distance=0..1.5] run tag @s remove spawned_spider_shulker