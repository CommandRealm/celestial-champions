execute unless entity @s[team=teams_pink] unless entity @a[team=teams_pink] run tellraw @s {"text":"You have joined the \"Pink Team.\" You currently don't have any teammates.","color":"light_purple"}
execute unless entity @s[team=teams_pink] if entity @a[team=teams_pink] run tellraw @s [{"text":"You have joined the \"Pink Team.\" Your teammates are: ","color":"light_purple"},{"selector":"@a[team=teams_pink]"}]
execute unless entity @s[team=teams_pink] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_pink] run tellraw @s {"text":"You are already on this team!","color":"light_purple"}
execute if entity @s[team=teams_pink] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_pink
team join teams_pink