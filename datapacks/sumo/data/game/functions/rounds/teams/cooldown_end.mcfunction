##Runs when the cooldown phase is over


##Runs math to see if any team has met the criteria yet.
scoreboard players operation Red: fake_criteria = Red: criteria
scoreboard players operation Blue: fake_criteria = Blue: criteria
scoreboard players operation Yellow: fake_criteria = Yellow: criteria
scoreboard players operation Green: fake_criteria = Green: criteria
scoreboard players operation Cyan: fake_criteria = Cyan: criteria
scoreboard players operation Orange: fake_criteria = Orange: criteria
scoreboard players operation Pink: fake_criteria = Pink: criteria
scoreboard players operation Purple: fake_criteria = Purple: criteria
scoreboard players operation White: fake_criteria = White: criteria
scoreboard players operation Gray: fake_criteria = Gray: criteria

scoreboard players operation Red: fake_criteria -= $criteria criteria
scoreboard players operation Blue: fake_criteria -= $criteria criteria
scoreboard players operation Yellow: fake_criteria -= $criteria criteria
scoreboard players operation Green: fake_criteria -= $criteria criteria
scoreboard players operation Cyan: fake_criteria -= $criteria criteria
scoreboard players operation Orange: fake_criteria -= $criteria criteria
scoreboard players operation Pink: fake_criteria -= $criteria criteria
scoreboard players operation Purple: fake_criteria -= $criteria criteria
scoreboard players operation White: fake_criteria -= $criteria criteria
scoreboard players operation Gray: fake_criteria -= $criteria criteria

##removing winner tag
tag @a remove winner
##adding winner tag
execute if score Red: fake_criteria matches 0 run tag @a[tag=playing,tag=on_red_team] add winner
execute if score Blue: fake_criteria matches 0 run tag @a[tag=playing,tag=on_blue_team] add winner
execute if score Yellow: fake_criteria matches 0 run tag @a[tag=playing,tag=on_yellow_team] add winner
execute if score Green: fake_criteria matches 0 run tag @a[tag=playing,tag=on_green_team] add winner
execute if score Cyan: fake_criteria matches 0 run tag @a[tag=playing,tag=on_cyan_team] add winner
execute if score Orange: fake_criteria matches 0 run tag @a[tag=playing,tag=on_orange_team] add winner
execute if score Pink: fake_criteria matches 0 run tag @a[tag=playing,tag=on_pink_team] add winner
execute if score Purple: fake_criteria matches 0 run tag @a[tag=playing,tag=on_purple_team] add winner
execute if score White: fake_criteria matches 0 run tag @a[tag=playing,tag=on_white_team] add winner
execute if score Gray: fake_criteria matches 0 run tag @a[tag=playing,tag=on_gray_team] add winner

execute if entity @a[tag=playing,tag=winner] run function game:rounds/teams/start_ending_phase
execute unless entity @a[tag=playing,tag=winner] run function game:rounds/end_round