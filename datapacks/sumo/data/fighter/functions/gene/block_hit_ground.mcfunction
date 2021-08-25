##Block hit ground function

##setting falling block scores timer
scoreboard players set @e[type=falling_block,sort=nearest,limit=1,tag=gene_falling_block_entity] death_timer 1

playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0

particle firework ~ ~0.75 ~ 0.15 0.15 0.15 0.15 50