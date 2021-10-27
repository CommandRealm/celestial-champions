##When called, it will move the grave down to the proper spot
execute if block ~ ~ ~ air if entity @s[distance=..4] positioned ~ ~-.25 ~ run function fighter:zombie/attempt_to_summon_grave
execute unless block ~ ~ ~ air if entity @s[distance=..4] positioned ~ ~-1.75 ~ run function fighter:zombie/summon_grave
execute if block ~ ~ ~ air unless entity @s[distance=..4] positioned as @s positioned ^ ^ ^2 positioned ~ ~-1.75 ~ run function fighter:zombie/summon_grave
execute unless block ~ ~ ~ air unless entity @s[distance=..4] positioned as @s positioned ^ ^ ^2 positioned ~ ~-1.75 ~ run function fighter:zombie/summon_grave