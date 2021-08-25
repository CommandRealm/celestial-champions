##called when a player is in the slow falling stage
execute as @a[tag=is_fighter,tag=slow_falling_until_landing] at @s run title @s actionbar [{"text":" "}]
scoreboard players set @a[tag=is_fighter,tag=slow_falling_until_landing] damage 0
scoreboard players set @a[tag=is_fighter,tag=slow_falling_until_landing] times_hit 0