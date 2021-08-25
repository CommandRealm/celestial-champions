##called when drakier is damaged. the purpose of this function is to remove the elytra

##score
scoreboard players set @s random_cooldown 25

##Replace
replaceitem entity @s armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#cc00fa","bold":true}]',color:3355443},costume:1b}
replaceitem entity @s[scores={costume=1}] armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#700000","bold":true}]',color:7340032},costume:1b}
replaceitem entity @s[scores={costume=2}] armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#000170","bold":true}]',color:368},costume:1b}
replaceitem entity @s[scores={costume=3}] armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#005100","bold":true}]',color:20736},costume:1b}
replaceitem entity @s[scores={costume=4}] armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drakier\'s Torso","italic":false,"color":"#e09400","bold":true}]',color:14717952},costume:1b}


##Tag to make the random cooldown not countdown
tag @s add pause_random_cooldown

function fighter:hotbar/drakier_get_air_jump_indicator