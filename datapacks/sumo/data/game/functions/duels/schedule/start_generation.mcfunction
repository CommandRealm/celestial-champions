##Called to start the schedule generation.

##move players
tp @a[tag=playing] 0 250 0

##General resets
function game:reset_players_before_start

##Resetting objectives
scoreboard objectives remove duels
scoreboard objectives add duels dummy

scoreboard objectives remove duels_timer
scoreboard objectives add duels_timer dummy

scoreboard objectives remove duel_1
scoreboard objectives add duel_1 dummy

scoreboard objectives remove duel_2
scoreboard objectives add duel_2 dummy

scoreboard objectives remove duel_3
scoreboard objectives add duel_3 dummy

scoreboard objectives remove duel_4
scoreboard objectives add duel_4 dummy

scoreboard objectives remove duel_5
scoreboard objectives add duel_5 dummy

scoreboard objectives remove duel_6
scoreboard objectives add duel_6 dummy

scoreboard objectives remove duel_7
scoreboard objectives add duel_7 dummy

scoreboard objectives remove duel_8
scoreboard objectives add duel_8 dummy

scoreboard objectives remove duel_9
scoreboard objectives add duel_9 dummy

scoreboard objectives remove duel_10
scoreboard objectives add duel_10 dummy

##11th is for if there is for an odd number of players and more than 10 people playing.
scoreboard objectives remove duel_11
scoreboard objectives add duel_11 dummy

##Objective to display winner animation text
scoreboard objectives remove duel_winner_text
scoreboard objectives add duel_winner_text dummy

##Objective to count the cooldown for updating the winner text
scoreboard objectives remove winner_text_cool
scoreboard objectives add winner_text_cool dummy

##Conference objective. (Doesn't mean too much, it's just used for scheduling)
scoreboard objectives remove duel_conference
scoreboard objectives add duel_conference dummy

##Conference objective. (Doesn't mean too much, it's just used for scheduling)
scoreboard objectives remove duel_c_position
scoreboard objectives add duel_c_position dummy

##Setting players to have no duels scheduled.
scoreboard players set @a[tag=playing] duel_1 -1000
scoreboard players set @a[tag=playing] duel_2 -1000
scoreboard players set @a[tag=playing] duel_3 -1000
scoreboard players set @a[tag=playing] duel_4 -1000
scoreboard players set @a[tag=playing] duel_5 -1000
scoreboard players set @a[tag=playing] duel_6 -1000
scoreboard players set @a[tag=playing] duel_7 -1000
scoreboard players set @a[tag=playing] duel_8 -1000
scoreboard players set @a[tag=playing] duel_9 -1000
scoreboard players set @a[tag=playing] duel_10 -1000
scoreboard players set @a[tag=playing] duel_11 -1000




##Recording general stats

##Number of players who are playing
execute store result score $players duels if entity @a[tag=playing]

##Half of the players who are playing (used to determine conference)
execute store result score $half_players duels if entity @a[tag=playing]
##adding one to players so it rounds up.
scoreboard players add $half_players duels 1
scoreboard players operation $half_players duels /= $2 number

##Seeing if it's even or odd
scoreboard players operation $remainder duels = $players duels
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2
execute if score $remainder duels matches 2.. run scoreboard players remove $remainder duels 2

##If it's an odd number, add a "fake player" which will serve as the bye week.
execute if score $remainder duels matches 1 run scoreboard players operation $bye_id duel_c_position = $half_players duels
execute if score $remainder duels matches 1 run scoreboard players set $bye_id duel_conference 2




##Splitting players up into conferences
scoreboard players set @a[tag=playing] duel_conference 2
execute as @a[tag=playing] at @s if score @s id <= $half_players duels run scoreboard players set @s duel_conference 1


##Getting conference position
scoreboard players set $position duel_c_position 0
execute as @a[tag=playing,scores={duel_conference=1},sort=random] at @s run function game:duels/schedule/get_conference_position
scoreboard players set $position duel_c_position 0
execute as @a[tag=playing,scores={duel_conference=2},sort=random] at @s run function game:duels/schedule/get_conference_position

##Setting our first duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_1_opponent
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1



##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our second duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_2_opponent

execute unless entity @a[scores={duel_2=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_2=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete

##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_3_opponent

execute unless entity @a[scores={duel_3=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_3=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete


##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_4_opponent

execute unless entity @a[scores={duel_4=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_4=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete

##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_5_opponent

execute unless entity @a[scores={duel_5=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_5=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete

##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_6_opponent

execute unless entity @a[scores={duel_6=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_6=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete

##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_7_opponent

execute unless entity @a[scores={duel_7=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_7=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete


##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_8_opponent

execute unless entity @a[scores={duel_8=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_8=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete


##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_9_opponent

execute unless entity @a[scores={duel_9=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_9=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete


##Moving forward in the conference position.
execute as @a[tag=playing,scores={duel_conference=1}] at @s unless entity @s[scores={duel_c_position=1}] run function game:duels/schedule/move_forward

##Moving backwards.
execute as @a[tag=playing,scores={duel_conference=2},tag=!dont_move_back] at @s run function game:duels/schedule/move_backward

##Move bye
execute if score $remainder duels matches 1 run function game:duels/schedule/move_bye

##Removing tag
tag @a remove dont_move_back

##Setting our third duel opponent. (Unless we're in conference 2 and our position matches the bye id)
execute as @a[tag=playing,scores={duel_conference=1},tag=!scheduling_complete] at @s unless score $bye_id duel_c_position = @s duel_c_position run function game:duels/schedule/get_duel_10_opponent

execute unless entity @a[scores={duel_10=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run scoreboard players add $rounds duels 1
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_10=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete

execute if score $players duels matches 11.. run function game:duels/schedule/spectator_schedule
execute unless entity @a[scores={duel_11=1..},tag=playing] run tag @a[tag=playing] add scheduling_complete
execute unless entity @a[tag=playing,tag=scheduling_complete] run tag @a[scores={duel_11=..0},tag=playing] add has_bye
execute if score $rounds duels = $players duels run tag @a[tag=playing] add scheduling_complete

team join gold @a[tag=playing]
execute as @a[tag=playing] at @s run function game:duels/schedule/read_schedule


##Removing tag
tag @a remove scheduling_complete


