##Called to call functions which will do tellraws and warning sounds
execute if score $time criteria matches 600 run function game:kills_timer/warnings/30_seconds
execute if score $time criteria matches 200 run function game:kills_timer/warnings/10_seconds
execute if score $time criteria matches 100 run function game:kills_timer/warnings/5_seconds
execute if score $time criteria matches 80 run function game:kills_timer/warnings/4_seconds
execute if score $time criteria matches 60 run function game:kills_timer/warnings/3_seconds
execute if score $time criteria matches 40 run function game:kills_timer/warnings/2_seconds
execute if score $time criteria matches 20 run function game:kills_timer/warnings/1_second