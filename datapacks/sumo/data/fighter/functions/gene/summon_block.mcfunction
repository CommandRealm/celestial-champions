##Called to copy an item to the head of a falling armor stand
##Random number
scoreboard players set $mod random 10
function random:random
execute if score $rand random matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:diamond_ore"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:white_wool"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:tnt"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 3 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:red_shulker_box"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 4 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:campfire"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:anvil"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 6 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:blue_concrete"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 7 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:yellow_concrete"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 8 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:light_blue_concrete"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}
execute if score $rand random matches 9 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:0b,Tags:["gene_block","on_death_timer","needs_death_timer"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:quartz_pillar"},Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","gene_falling_block_entity"]}]}


##Setting death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 75
scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 74

scoreboard players operation @e[type=falling_block,tag=needs_copied_id] id = @s id

##tag removals
tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer
tag @e[type=falling_block,tag=needs_copied_id] remove needs_copied_id

##sound
playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0