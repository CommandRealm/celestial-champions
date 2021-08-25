##Called when we use an ability cake. It's purpose is to reset our cooldowns

execute if entity @s[scores={ability_state=2}] run scoreboard players set @s ability_timer 1

execute if entity @s[scores={ability_state=1}] run tag @s add reset_timer_when_ability_over

execute unless entity @s[scores={ability_state=0}] run playsound minecraft:block.stone.place master @a ~ ~ ~ 1 1.15

execute unless entity @s[scores={ability_state=0}] run particle item redstone_torch ~ ~1.75 ~ 0 0 0 0.35 25