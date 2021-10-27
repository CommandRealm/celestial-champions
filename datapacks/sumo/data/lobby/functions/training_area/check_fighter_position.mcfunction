##Called to check where the fighter is located and determine if they need to be redistributed or just cleared.
execute positioned 0 66 0 if entity @s[distance=..55] run tag @s add no_redistribute

##Unless is for gracea's shulkers
execute unless entity @e[type=falling_block,distance=..3,tag=gracea_block] unless entity @e[type=shulker,distance=..3,tag=gene_block_shulker] unless entity @e[type=falling_block,distance=..3,tag=deployable_platform] unless entity @s[scores={ability_type=1,ability_state=1,fighter=13}] run function lobby:fall_off

##Tag removal
tag @s remove no_redistribute



