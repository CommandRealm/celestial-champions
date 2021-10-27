##Called when Slime uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 60

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

particle item slime_ball ~ ~ ~ 2 0 2 0.15 200

##Tagging self
tag @s add used_ability

##Freezing players
execute as @a[distance=..4,tag=is_fighter,gamemode=adventure,tag=!used_ability,nbt={OnGround:1b}] at @s run function fighter:slime/freeze_self


##Removing tags
tag @s remove used_ability

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Sticky Floor\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Freezes nearby players who are grounded."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.slime.jump master @s ~ ~ ~ 1 0.75
playsound minecraft:entity.slime.jump master @s ~ ~ ~ 1 1.0
playsound minecraft:entity.slime.jump master @s ~ ~ ~ 1 1.25
