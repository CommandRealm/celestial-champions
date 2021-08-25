##Costume function for theo

##Clears
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{costume:1b}}]}] run clear @s leather_boots{costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{costume:1b}}]}] run clear @s leather_leggings{costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{costume:1b}}]}] run clear @s leather_chestplate{costume:1b}
clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]

##Replaceitems


##

replaceitem entity @s armor.head player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Husk\'s Head","italic":false,"color":"#888f58","bold":true}]'},costume:1b,SkullOwner:{Id:[I;708510172,901009206,-2065098836,-287630554],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzMzODMxOGJjOTFhMzZjZDVhYjZhYTg4NWM5YTRlZTJiZGFjZGFhNWM2NmIyYTk5ZGZiMGE1NjA5ODNmMjQ4MCJ9fX0="}]}}}
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{costume:1b}}]}] run replaceitem entity @s armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Husk\'s Torso","italic":false,"color":"#888f58","bold":true}]',color:10263667},costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{costume:1b}}]}] run replaceitem entity @s armor.legs leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Husk\'s Legs","italic":false,"color":"#888f58","bold":true}]',color:4012582},costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{costume:1b}}]}] run replaceitem entity @s[tag=!slow_falling_until_landing] armor.feet leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Husk\'s Feet","italic":false,"color":"#888f58","bold":true}]',color:4342338},costume:1b}

