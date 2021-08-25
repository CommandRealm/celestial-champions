##Removing one
scoreboard players remove Red: criteria 1
scoreboard players remove Blue: criteria 1
scoreboard players remove Yellow: criteria 1
scoreboard players remove Green: criteria 1
scoreboard players remove Cyan: criteria 1
scoreboard players remove Orange: criteria 1
scoreboard players remove Pink: criteria 1
scoreboard players remove Purple: criteria 1
scoreboard players remove White: criteria 1
scoreboard players remove Gray: criteria 1

##Recalling function 
execute if score Red: criteria matches ..0 if score Blue: criteria matches ..0 if score Yellow: criteria matches ..0 if score Green: criteria matches ..0 if score Cyan: criteria matches ..0 if score Orange: criteria matches ..0 if score Pink: criteria matches ..0 if score Purple: criteria matches ..0 if score White: criteria matches ..0 if score Gray: criteria matches ..0 run tag @a add stop_recall
execute unless entity @a[tag=stop_recall] run function game:kills_timer/teams/remove_scores
