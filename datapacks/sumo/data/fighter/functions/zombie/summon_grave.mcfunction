##Summons the grave for the zombie attack

##Armor stand summons (Randomizing orientation)
scoreboard players set $mod random 4
function random:random

##Storing rotation for being able to tell which way to summon the grave
execute store result score @s calculate run data get entity @s Rotation[0] 1

##The positioned is because for whatever reason when I made the grave in boom doom it wasn't set to run from the center.
execute if entity @s[scores={calculate=315..359}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_0
execute if entity @s[scores={calculate=0..44}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_0
execute if entity @s[scores={calculate=45..89}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_3
execute if entity @s[scores={calculate=90..134}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_3
execute if entity @s[scores={calculate=135..179}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_1
execute if entity @s[scores={calculate=180..224}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_1
execute if entity @s[scores={calculate=225..269}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_2
execute if entity @s[scores={calculate=270..314}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_2

execute if entity @s[scores={calculate=-360..-315}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_0
execute if entity @s[scores={calculate=-46..-0}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_0
execute if entity @s[scores={calculate=-91..-45}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_2
execute if entity @s[scores={calculate=-136..-90}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_2
execute if entity @s[scores={calculate=-181..-135}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_1
execute if entity @s[scores={calculate=-226..-180}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_1
execute if entity @s[scores={calculate=-271..-225}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_3
execute if entity @s[scores={calculate=-316..-270}] positioned ~-0.6244 ~ ~0.6244 run function fighter:zombie/grave_3



##Making it so they randomly disappear together
scoreboard players set @e[tag=grave,type=armor_stand,tag=needs_death_timer] death_timer 50
scoreboard players remove @e[tag=grave,type=armor_stand,tag=needs_death_timer,sort=random,limit=6] death_timer 5
scoreboard players remove @e[tag=grave,type=armor_stand,tag=needs_death_timer,sort=random,limit=6] death_timer 3
scoreboard players add @e[tag=grave,type=armor_stand,tag=needs_death_timer,sort=random,limit=6] death_timer 5
scoreboard players add @e[tag=grave,type=armor_stand,tag=needs_death_timer,sort=random,limit=6] death_timer 3


tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer


##Giving effects
execute if entity @a[tag=is_fighter,gamemode=adventure,distance=..3,tag=!used_ability] run function fighter:zombie/caught_in_grave