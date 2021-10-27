##called when drakier is damaged. the purpose of this function is to remove the elytra

##score
scoreboard players set @s random_cooldown 20


##Setting the display time so that we can divide for a percentage
scoreboard players set @s[scores={damage_percent=..9}] random_stat2 110
scoreboard players set @s[scores={damage_percent=10..19}] random_stat2 100
scoreboard players set @s[scores={damage_percent=20..29}] random_stat2 90
scoreboard players set @s[scores={damage_percent=30..39}] random_stat2 80
scoreboard players set @s[scores={damage_percent=40..49}] random_stat2 70
scoreboard players set @s[scores={damage_percent=50..59}] random_stat2 60
scoreboard players set @s[scores={damage_percent=60..69}] random_stat2 50
scoreboard players set @s[scores={damage_percent=70..79}] random_stat2 40
scoreboard players set @s[scores={damage_percent=80..89}] random_stat2 30
scoreboard players set @s[scores={damage_percent=90..99}] random_stat2 20
scoreboard players set @s[scores={damage_percent=100}] random_stat2 10



##Replace
item replace entity @s armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#cc00fa","bold":true}]',color:3355443},costume:1b}
item replace entity @s[scores={costume=1}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#700000","bold":true}]',color:7340032},costume:1b}
item replace entity @s[scores={costume=2}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#000170","bold":true}]',color:368},costume:1b}
item replace entity @s[scores={costume=3}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#005100","bold":true}]',color:20736},costume:1b}
item replace entity @s[scores={costume=4}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#e09400","bold":true}]',color:14717952},costume:1b}


##Tag to make the random cooldown not countdown
##tag @s add pause_random_cooldown

function fighter:hotbar/drakier_get_air_jump_indicator