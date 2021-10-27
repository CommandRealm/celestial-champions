##Called when Drakier flys too long

##Sounds
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 0
playsound minecraft:item.shield.break master @a ~ ~ ~ 2 1
##Damaged
function fighter:drakier/damaged

scoreboard players set @s random_cooldown 300

##Xp set
xp set @s 0 levels


##Reset score
scoreboard players reset @s random_stat