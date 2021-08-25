##Called when there is an active explosive from incend.
execute as @e[tag=incend_tnt] at @s if entity @a[tag=is_fighter,distance=..5] run function fighter:incend/check_tnt_position

##If explosive needs to be teleported in front of players face.
execute as @e[tag=incend_tnt,tag=!has_been_hit,tag=!incend_blue_tnt] at @s run function fighter:incend/tp_in_front_of_face

##OnGround check
execute as @e[tag=incend_tnt,nbt={OnGround:1b},tag=has_been_hit,tag=!incend_blue_tnt] at @s run tag @s add incend_return

##If tnt hasn't been hit
execute as @e[tag=incend_tnt,nbt={HurtTime:10s},tag=!has_been_hit] at @s run function fighter:incend/hit_tnt



##Return mode
execute as @e[tag=incend_return] at @s run function fighter:incend/return