execute unless entity @s[team=teams_blue] unless entity @a[team=teams_blue] run tellraw @s {"translate":"You have joined the \"Blue Team.\" You currently don't have any teammates.","color":"dark_blue"}
execute unless entity @s[team=teams_blue] if entity @a[team=teams_blue] run tellraw @s [{"translate":"You have joined the \"Blue Team.\" Your teammates are: ","color":"dark_blue"},{"selector":"@a[team=teams_blue]"}]
execute unless entity @s[team=teams_blue] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_blue] run tellraw @s {"translate":"You are already on this team!","color":"dark_blue"}
execute if entity @s[team=teams_blue] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_blue
team join teams_blue