execute unless entity @s[team=teams_cyan] unless entity @a[team=teams_cyan] run tellraw @s {"text":"You have joined the \"Cyan Team.\" You currently don't have any teammates.","color":"dark_aqua"}
execute unless entity @s[team=teams_cyan] if entity @a[team=teams_cyan] run tellraw @s [{"text":"You have joined the \"Cyan Team.\" Your teammates are: ","color":"dark_aqua"},{"selector":"@a[team=teams_cyan]"}]
execute unless entity @s[team=teams_cyan] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @s[team=teams_cyan] run tellraw @s {"text":"You are already on this team!","color":"dark_aqua"}
execute if entity @s[team=teams_cyan] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s add rejoin_cyan
team join teams_cyan