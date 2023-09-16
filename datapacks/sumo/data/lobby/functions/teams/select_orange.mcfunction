execute unless entity @s[team=teams_orange] unless entity @a[team=teams_orange] run tellraw @s {"translate":"You have joined the \"Orange Team.\" You currently don't have any teammates.","color":"gold"}
execute unless entity @s[team=teams_orange] if entity @a[team=teams_orange] run tellraw @s [{"translate":"You have joined the \"Orange Team.\" Your teammates are: ","color":"gold"},{"selector":"@a[team=teams_orange]"}]
execute unless entity @s[team=teams_orange] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_orange] run tellraw @s {"translate":"You are already on this team!","color":"gold"}
execute if entity @s[team=teams_orange] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_orange
team join teams_orange