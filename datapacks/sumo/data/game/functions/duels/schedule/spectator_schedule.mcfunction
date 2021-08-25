##Called to schedule spectators


##adding a round
scoreboard players add $rounds duels 1

##Scheduling final 10 fights for those who had byes.
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel
execute as @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel] at @s run function game:duels/schedule/schedule_extra_duel

tag @a remove scheduled_final_duel

##setting duel count
scoreboard players set $rounds duels 11