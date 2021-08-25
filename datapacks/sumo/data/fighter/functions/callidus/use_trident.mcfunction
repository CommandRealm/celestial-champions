##called when a player uses their trident

##Score resets
scoreboard players reset @s throw_trident

execute unless entity @s[advancements={advancements:damage/trident_melee=true}] run function fighter:callidus/throw_trident

##advancement revoke
advancement revoke @s only advancements:damage/trident_melee