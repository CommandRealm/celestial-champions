##called to get the sign

##Seeing if we clicked it
execute store result score $calculate calculate run clear @s oak_sign{info_item:1b} 0

clear @s oak_sign
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign"}},distance=..15]

item replace entity @s inventory.8 with oak_sign{info_item:1b,HideFlags:63,display:{Name:'[{"translate":"ⓘ","color":"gold","italic":false},{"translate":" Information","color":"yellow"}]',Lore:['[{"translate":"Click to receive info","color":"gray","italic":false}]','[{"translate":"on your fighter.","italic":false,"color":"gray"}]']}}

##If we clicked, give the info
execute if score $calculate calculate matches 1.. if score @s fighter matches 0 run function lobby:descriptions/theo
execute if score $calculate calculate matches 1.. if score @s fighter matches 1 run function lobby:descriptions/zombie
execute if score $calculate calculate matches 1.. if score @s fighter matches 2 run function lobby:descriptions/skeleton
execute if score $calculate calculate matches 1.. if score @s fighter matches 3 run function lobby:descriptions/creeper
execute if score $calculate calculate matches 1.. if score @s fighter matches 4 run function lobby:descriptions/spider
execute if score $calculate calculate matches 1.. if score @s fighter matches 5 run function lobby:descriptions/chicken
execute if score $calculate calculate matches 1.. if score @s fighter matches 6 run function lobby:descriptions/enderman
execute if score $calculate calculate matches 1.. if score @s fighter matches 7 run function lobby:descriptions/incend
execute if score $calculate calculate matches 1.. if score @s fighter matches 8 run function lobby:descriptions/drakier
execute if score $calculate calculate matches 1.. if score @s fighter matches 9 run function lobby:descriptions/gracea
execute if score $calculate calculate matches 1.. if score @s fighter matches 10 run function lobby:descriptions/callidus
execute if score $calculate calculate matches 1.. if score @s fighter matches 11 run function lobby:descriptions/gene
execute if score $calculate calculate matches 1.. if score @s fighter matches 12 run function lobby:descriptions/melon_man
execute if score $calculate calculate matches 1.. if score @s fighter matches 13 run function lobby:descriptions/blaze
execute if score $calculate calculate matches 1.. if score @s fighter matches 14 run function lobby:descriptions/slime
execute if score $calculate calculate matches 1.. if score @s fighter matches 15 run function lobby:descriptions/malice
execute if score $calculate calculate matches 1.. if score @s fighter matches 16 run function lobby:descriptions/arthor
execute if score $calculate calculate matches 1.. if score @s fighter matches 17 run function lobby:descriptions/guardian
execute if score $calculate calculate matches 1.. if score @s fighter matches 17 run function fighter:get_stats
