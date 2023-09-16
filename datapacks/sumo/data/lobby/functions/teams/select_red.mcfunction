execute unless entity @s[team=teams_red] unless entity @a[team=teams_red] run tellraw @s {"translate":"You have joined the \"Red Team.\" You currently don't have any teammates.","color":"dark_red"}
execute unless entity @s[team=teams_red] if entity @a[team=teams_red] run tellraw @s [{"translate":"You have joined the \"Red Team.\" Your teammates are: ","color":"dark_red"},{"selector":"@a[team=teams_red]"}]
execute unless entity @s[team=teams_red] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_red] run tellraw @s {"translate":"You are already on this team!","color":"dark_red"}
execute if entity @s[team=teams_red] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_red
team join teams_red