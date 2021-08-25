##Run whenever someone uses a knockback attack

##Resetting the combo meter
scoreboard players set @s combo 0

##Resetting our knockback
scoreboard players operation @s knockback = @s base_knockback

##If we are supposed to have a set knockback, set it
scoreboard players operation @s[tag=use_set_knockback] knockback = @s set_knockback

##sounds
playsound minecraft:item.shield.block master @a ~ ~ ~ 0.667 1.25

##Resetting calc knockback
scoreboard players operation @s calc_knockback = @s base_knockback

##Clear
clear @s #minecraft:knockback_weapon{Weapon:"knockback"}