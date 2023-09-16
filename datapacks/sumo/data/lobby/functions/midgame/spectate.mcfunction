##called when we press spectate
team join spectator
tellraw @s [{"translate":"You are now spectating. To return to the lobby, click ","color":"white"},{"translate":"[","color":"gray","bold":true},{"translate":"here","color":"white","bold":true,"clickEvent": {"action": "run_command","value":"/trigger back_to_lobby set 1"}},{"translate":"] ","color":"gray","bold":true}]

##Bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]

##gamemode
gamemode spectator @s

##resetting objective
scoreboard objectives remove back_to_lobby
scoreboard objectives add back_to_lobby trigger

##tps
tp @s @r[tag=playing,gamemode=spectator]
tp @s @r[tag=playing,gamemode=adventure]


##sound
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 10000 1.5