##Called to check the spider friend position and move them if necessary
execute if entity @e[type=spider,dx=0,tag=!needs_death_timer] run tp @s ~2 ~1 ~
execute at @s if entity @e[type=spider,dx=0,tag=!needs_death_timer] run function fighter:spider/check_spider_friend_position