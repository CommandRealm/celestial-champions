##Get boots for callidus


##clears and kills
clear @s iron_boots{costume:1b}
kill @e[type=item,nbt={Item:{tag:{costume:1b}}},distance=..15]

##boots
replaceitem entity @s armor.feet iron_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Callidus\' Feet","italic":false,"color":"#d1ae5c","bold":true}]'},costume:1b}