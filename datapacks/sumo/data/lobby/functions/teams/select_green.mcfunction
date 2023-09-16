execute unless entity @s[team=teams_green] unless entity @a[team=teams_green] run tellraw @s {"translate":"You have joined the \"Green Team.\" You currently don't have any teammates.","color":"green"}
execute unless entity @s[team=teams_green] if entity @a[team=teams_green] run tellraw @s [{"translate":"You have joined the \"Green Team.\" Your teammates are: ","color":"green"},{"selector":"@a[team=teams_green]"}]
execute unless entity @s[team=teams_green] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_green] run tellraw @s {"translate":"You are already on this team!","color":"green"}
execute if entity @s[team=teams_green] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_green
team join teams_green