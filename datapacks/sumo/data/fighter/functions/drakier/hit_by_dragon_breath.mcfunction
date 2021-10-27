##Called when a player is hit by dragon breath.

##Damage
effect give @s instant_damage 1 0 true

##adding combo
execute if data entity @s {HurtTime:10s} as @p[tag=temporary_tag] run function fighter:damage/used_combo