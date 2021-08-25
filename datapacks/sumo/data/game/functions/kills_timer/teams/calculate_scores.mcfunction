##Called to calculate the scores for teams.

##adding 1
scoreboard players add Red: criteria 1
scoreboard players add Blue: criteria 1
scoreboard players add Yellow: criteria 1
scoreboard players add Green: criteria 1
scoreboard players add Cyan: criteria 1
scoreboard players add Orange: criteria 1
scoreboard players add Pink: criteria 1
scoreboard players add Purple: criteria 1
scoreboard players add White: criteria 1
scoreboard players add Gray: criteria 1

##Remove winner tag
tag @a remove winner

##Making sure someone has a kill
execute if score Red: criteria matches 1 if score Blue: criteria matches 1 if score Yellow: criteria matches 1 if score Green: criteria matches 1 if score Cyan: criteria matches 1 if score Orange: criteria matches 1 if score Pink: criteria matches 1 if score Purple: criteria matches 1 if score White: criteria matches 1 if score Gray: criteria matches 1 run tag @a add no_kills

execute unless entity @a[tag=no_kills] run function game:kills_timer/teams/remove_scores

execute unless entity @a[tag=no_kills] run function game:kills_timer/teams/tag_winners

execute if entity @a[tag=no_kills] run tag @a[tag=playing] add winner

##removing no kills tag
tag @a remove no_kills
tag @a remove stop_recall