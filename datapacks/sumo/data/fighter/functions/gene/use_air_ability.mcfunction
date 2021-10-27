##Called when Gene uses his air ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 10

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1



##No effect here because it's ran when the active ability timer runs out
##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Block Smash\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Drops a rideable falling block that does damage."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.840896
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.059463
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.259921