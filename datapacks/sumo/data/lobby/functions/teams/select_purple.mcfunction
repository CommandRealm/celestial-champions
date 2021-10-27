execute unless entity @s[team=teams_purple] unless entity @a[team=teams_purple] run tellraw @s {"text":"You have joined the \"Purple Team.\" You currently don't have any teammates.","color":"dark_purple"}
execute unless entity @s[team=teams_purple] if entity @a[team=teams_purple] run tellraw @s [{"text":"You have joined the \"Purple Team.\" Your teammates are: ","color":"dark_purple"},{"selector":"@a[team=teams_purple]"}]
execute unless entity @s[team=teams_purple] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_purple] run tellraw @s {"text":"You are already on this team!","color":"dark_purple"}
execute if entity @s[team=teams_purple] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_purple
team join teams_purple