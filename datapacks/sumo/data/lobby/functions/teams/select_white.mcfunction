execute unless entity @s[team=teams_white] unless entity @a[team=teams_white] run tellraw @s {"translate":"You have joined the \"White Team.\" You currently don't have any teammates.","color":"white"}
execute unless entity @s[team=teams_white] if entity @a[team=teams_white] run tellraw @s [{"translate":"You have joined the \"White Team.\" Your teammates are: ","color":"white"},{"selector":"@a[team=teams_white]"}]
execute unless entity @s[team=teams_white] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_white] run tellraw @s {"translate":"You are already on this team!","color":"white"}
execute if entity @s[team=teams_white] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_white
team join teams_white