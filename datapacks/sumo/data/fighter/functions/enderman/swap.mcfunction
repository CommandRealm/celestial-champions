##Called to swap two players.

##Summoning and rotating an area effect cloud at our current position
summon area_effect_cloud ~ ~ ~ {Tags:["die","die_in_function"],Duration:1}
tp @e[type=area_effect_cloud,tag=die_in_function,distance=..1] @s

##Tping self to nearby player
tp @s @p[tag=swap,tag=is_fighter,gamemode=adventure]

##Tping nearby player to our marked position
tp @p[tag=swap,tag=is_fighter,gamemode=adventure] @e[type=area_effect_cloud,tag=die_in_function,sort=nearest,limit=1]

tag @a remove swap

##Kill area effet cloud
kill @e[type=area_effect_cloud,tag=die_in_function,limit=1]