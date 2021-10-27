##Setting up bossbar
scoreboard players operation $time criteria = $set_kills_timer settings
function game:kills_timer/update_bossbar

bossbar set minecraft:game visible true