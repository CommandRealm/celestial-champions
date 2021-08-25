##Called when spider uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 120

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0
##Summon
summon spider 3 43 -3 {PersistenceRequired:1b,Tags:["needs_copied_id","needs_player_team","spider_friend","on_death_timer","needs_death_timer","invalid_kb_hit"],HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:7}]}},{}],Attributes:[{Name:"generic.follow_range",Base:1024},{Name:"generic.movement_speed",Base:0.5}],ActiveEffects:[{Id:11b,Duration:100000,Amplifier:254,ShowParticles:false}]}

##Tping spider so that the arrow won't hit it
execute as @e[type=spider,tag=needs_death_timer] at @s run function fighter:spider/check_spider_friend_position

##Summong arrow
execute as @e[type=spider,tag=needs_death_timer] at @s run summon arrow ~ ~ ~ {Tags:["needs_copied_uuid"]}

##Effect
effect give @s speed 6 1 true

##Setting death timer 
scoreboard players set @e[type=spider,tag=needs_death_timer] death_timer 120

##Adding tag
tag @s add copy_id
tag @s add copy_team
tag @s add used_ability


##Copying uuid to arrow
execute as @e[type=arrow,tag=needs_copied_uuid] run data modify entity @s Owner set from entity @p[tag=!used_ability,gamemode=adventure,tag=is_fighter] UUID

##Copying id value to spider
scoreboard players operation @e[type=spider,tag=needs_copied_id] id = @s id

##Giving tag and team to spider
execute as @e[type=spider,tag=needs_copied_id] at @s run function game:give_entity_id
execute as @e[type=spider,tag=needs_player_team] at @s run function game:give_entity_team

##Removing tags
tag @s remove copy_id
tag @s remove copy_team
tag @s remove used_ability
tag @e[type=arrow,tag=needs_copied_uuid] remove needs_copied_uuid

tag @e[type=spider,tag=needs_death_timer] remove needs_death_timer

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Spider Friend\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Launches spider that attacks opponents and give yourself Speed 2 for six seconds."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.spider.step master @a ~ ~ ~ 1 1.25
playsound minecraft:entity.spider.step master @a ~ ~ ~ 1 1.0
playsound minecraft:entity.spider.step master @a ~ ~ ~ 1 0.75