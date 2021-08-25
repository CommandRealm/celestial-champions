##Called when an extra jump is in progress

##Removing time
scoreboard players remove @a[tag=is_fighter,scores={extra_jump_time=1..}] extra_jump_time 1

##Jump running out
execute as @a[tag=is_fighter,scores={extra_jump_time=0}] run function fighter:extra_jump/jump_over