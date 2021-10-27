execute unless entity @s[team=teams_gray] unless entity @a[team=teams_gray] run tellraw @s {"text":"You have joined the \"Gray Team.\" You currently don't have any teammates.","color":"dark_gray"}
execute unless entity @s[team=teams_gray] if entity @a[team=teams_gray] run tellraw @s [{"text":"You have joined the \"Gray Team.\" Your teammates are: ","color":"dark_gray"},{"selector":"@a[team=teams_gray]"}]
execute unless entity @s[team=teams_gray] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_gray] run tellraw @s {"text":"You are already on this team!","color":"dark_gray"}
execute if entity @s[team=teams_gray] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_gray
team join teams_gray