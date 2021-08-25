##The always running function.

##Saturation. Give someone the hungry tag to combat it.
execute unless score $item_rate settings matches 1.. run effect give @a saturation 2 255 true

##Join Game Stuff

##Join game call
execute as @a at @s unless entity @s[scores={has_joined=1..}] run function general:join_game

##Leave game call
execute as @a[scores={has_left=1..}] run function general:leave_game



##Calling the main game function.
execute if score $game state matches 1 run function game:main


##Calling the function that runs a check to see if it needs to call costumes and fighter ability functions
execute if entity @a[tag=needs_costume] run function fighter:check_needs

##Lobby function
execute if entity @a[x=0,y=66,z=0,distance=..500] run function lobby:main

##Music function.
function music:main


##Effect
effect give @a resistance 1000000 255 true
effect give @a instant_health 1 10 true


##If we need hunger to be a thing.
execute if score $item_rate settings matches 1.. run function item:hunger/main