##Called to tag the winners
execute if score Red: criteria matches 0.. run tag @a[tag=playing,tag=on_red_team] add winner
execute if score Blue: criteria matches 0.. run tag @a[tag=playing,tag=on_blue_team] add winner
execute if score Yellow: criteria matches 0.. run tag @a[tag=playing,tag=on_yellow_team] add winner
execute if score Green: criteria matches 0.. run tag @a[tag=playing,tag=on_green_team] add winner
execute if score Cyan: criteria matches 0.. run tag @a[tag=playing,tag=on_cyan_team] add winner
execute if score Orange: criteria matches 0.. run tag @a[tag=playing,tag=on_orange_team] add winner
execute if score Pink: criteria matches 0.. run tag @a[tag=playing,tag=on_pink_team] add winner
execute if score Purple: criteria matches 0.. run tag @a[tag=playing,tag=on_purple_team] add winner
execute if score White: criteria matches 0.. run tag @a[tag=playing,tag=on_white_team] add winner
execute if score Gray: criteria matches 0.. run tag @a[tag=playing,tag=on_gray_team] add winner