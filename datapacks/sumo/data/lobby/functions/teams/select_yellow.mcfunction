execute unless entity @s[team=teams_yellow] unless entity @a[team=teams_yellow] run tellraw @s {"text":"You have joined the \"Yellow Team.\" You currently don't have any teammates.","color":"yellow"}
execute unless entity @s[team=teams_yellow] if entity @a[team=teams_yellow] run tellraw @s [{"text":"You have joined the \"Yellow Team.\" Your teammates are: ","color":"yellow"},{"selector":"@a[team=teams_yellow]"}]
execute unless entity @s[team=teams_yellow] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_yellow] run tellraw @s {"text":"You are already on this team!","color":"yellow"}
execute if entity @s[team=teams_yellow] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_yellow
team join teams_yellow