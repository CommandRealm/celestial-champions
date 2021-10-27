##Called to copy an item to the head of a falling armor stand


##Summoning block.




##Summoning
summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block_shulker_display","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:shulker",Tags:["needs_death_timer","on_death_timer","gene_block_shulker"],NoAI:1b,ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:0,ShowParticles:false}]}]}


##Random number
scoreboard players set $mod random 10
function random:random
execute if score $rand random matches 0 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"diamond_ore"}}]}
execute if score $rand random matches 1 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"white_wool"}}]}
execute if score $rand random matches 2 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"stone_bricks"}}]}
execute if score $rand random matches 3 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"smooth_quartz"}}]}
execute if score $rand random matches 4 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"moss_block"}}]}
execute if score $rand random matches 5 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"terracotta"}}]}
execute if score $rand random matches 6 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"blue_concrete"}}]}
execute if score $rand random matches 7 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"yellow_concrete"}}]}
execute if score $rand random matches 8 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"light_blue_concrete"}}]}
execute if score $rand random matches 9 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","needs_adjustments","gene_block","needs_copied_id","gene_block_tp"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer","gene_block_display"],BlockState:{Name:"quartz_pillar"}}]}

effect give @e[type=armor_stand,tag=needs_death_timer] slow_falling 1000 0 true


##Setting death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 500

scoreboard players operation @e[type=armor_stand,tag=needs_copied_id] id = @s id
scoreboard players operation @e[type=falling_block,tag=needs_death_timer] id = @s id
scoreboard players operation @e[type=shulker,tag=needs_death_timer] id = @s id

##Setting timer for moving down
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] random_stat 4


scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 499

scoreboard players set @e[type=shulker,tag=needs_death_timer] death_timer 499


##tag removals
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer
tag @e[type=armor_stand,tag=needs_copied_id] remove needs_copied_id
tag @e[type=armor_stand,tag=needs_adjustments] remove needs_adjustments


tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer

tag @e[type=shulker,tag=needs_death_timer] remove needs_death_timer

##sound
playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0