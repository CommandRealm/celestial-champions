##called to update our winner display text
scoreboard players add @s duel_winner_text 1
scoreboard players set @s winner_text_cool 2

##reset subtitle
title @s subtitle [{"translate":""}]

title @s[scores={duel_winner_text=1}] title [{"translate":"winner_animation.0","fallback":"W","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=2}] title [{"translate":"winner_animation.1","fallback":"WI","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=3}] title [{"translate":"winner_animation.2","fallback":"WIN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=4}] title [{"translate":"winner_animation.3","fallback":"WINN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=5}] title [{"translate":"winner_animation.4","fallback":"WINNE","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=6}] title [{"translate":"winner_animation.5","fallback":"WINNER","bold":true,"color":"yellow"}]

title @s[scores={duel_winner_text=7}] title [{"translate":"winner_animation.0","fallback":"W","bold":true,"color":"gold"},{"translate":"winner_animation.6","fallback":"INNER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=8}] title [{"translate":"winner_animation.1","fallback":"WI","bold":true,"color":"gold"},{"translate":"winner_animation.7","fallback":"NNER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=9}] title [{"translate":"winner_animation.2","fallback":"WIN","bold":true,"color":"gold"},{"translate":"winner_animation.8","fallback":"NER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=10}] title [{"translate":"winner_animation.3","fallback":"WINN","bold":true,"color":"gold"},{"translate":"winner_animation.9","fallback":"ER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=11}] title [{"translate":"winner_animation.4","fallback":"WINNE","bold":true,"color":"gold"},{"translate":"winner_animation.10","fallback":"R","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=12}] title [{"translate":"winner_animation.5","fallback":"WINNER","bold":true,"color":"gold"}]

title @s[scores={duel_winner_text=13}] title [{"translate":"winner_animation.11","fallback":"W","bold":true,"color":"yellow"},{"translate":"winner_animation.12","fallback":"I","bold":true,"color":"gold"},{"translate":"winner_animation.13","fallback":"N","bold":true,"color":"yellow"},{"translate":"winner_animation.14","fallback":"N","bold":true,"color":"gold"},{"translate":"winner_animation.15","fallback":"E","bold":true,"color":"yellow"},{"translate":"winner_animation.16","fallback":"R","bold":true,"color":"gold"}]
title @s[scores={duel_winner_text=15}] title [{"translate":"winner_animation.11","fallback":"W","bold":true,"color":"gold"},{"translate":"winner_animation.12","fallback":"I","bold":true,"color":"yellow"},{"translate":"winner_animation.13","fallback":"N","bold":true,"color":"gold"},{"translate":"winner_animation.14","fallback":"N","bold":true,"color":"yellow"},{"translate":"winner_animation.15","fallback":"E","bold":true,"color":"gold"},{"translate":"winner_animation.16","fallback":"R","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=17}] title [{"translate":"winner_animation.11","fallback":"W","bold":true,"color":"yellow"},{"translate":"winner_animation.12","fallback":"I","bold":true,"color":"gold"},{"translate":"winner_animation.13","fallback":"N","bold":true,"color":"yellow"},{"translate":"winner_animation.14","fallback":"N","bold":true,"color":"gold"},{"translate":"winner_animation.15","fallback":"E","bold":true,"color":"yellow"},{"translate":"winner_animation.16","fallback":"R","bold":true,"color":"gold"}]
title @s[scores={duel_winner_text=19}] title [{"translate":"winner_animation.11","fallback":"W","bold":true,"color":"gold"},{"translate":"winner_animation.12","fallback":"I","bold":true,"color":"yellow"},{"translate":"winner_animation.13","fallback":"N","bold":true,"color":"gold"},{"translate":"winner_animation.14","fallback":"N","bold":true,"color":"yellow"},{"translate":"winner_animation.15","fallback":"E","bold":true,"color":"gold"},{"translate":"winner_animation.16","fallback":"R","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=21}] title [{"translate":"winner_animation.11","fallback":"W","bold":true,"color":"yellow"},{"translate":"winner_animation.12","fallback":"I","bold":true,"color":"gold"},{"translate":"winner_animation.13","fallback":"N","bold":true,"color":"yellow"},{"translate":"winner_animation.14","fallback":"N","bold":true,"color":"gold"},{"translate":"winner_animation.15","fallback":"E","bold":true,"color":"yellow"},{"translate":"winner_animation.16","fallback":"R","bold":true,"color":"gold"}]

title @s[scores={duel_winner_text=23}] title [{"translate":"winner_animation.5","fallback":"WINNER","bold":true,"color":"yellow"}]


title @s[scores={duel_winner_text=24}] title [{"translate":"winner_animation.5","fallback":"WINNER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=25}] title [{"translate":"winner_animation.4","fallback":"WINNE","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=26}] title [{"translate":"winner_animation.3","fallback":"WINN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=27}] title [{"translate":"winner_animation.2","fallback":"WIN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=28}] title [{"translate":"winner_animation.1","fallback":"WI","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=29}] title [{"translate":"winner_animation.0","fallback":"W","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=30}] title [{"translate":"","bold":true,"color":"yellow"}]


playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=1}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=4}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=7}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=10}] ~ ~ ~ 1 1.259921

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=12}] ~ ~ ~ 1 1.334840


playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=1}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=4}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=7}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=10}] ~ ~ ~ 1 1.259921

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=12}] ~ ~ ~ 1 1.334840




playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=14}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=17}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=20}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=22}] ~ ~ ~ 1 1.334840

playsound minecraft:block.note_block.chime record @s[scores={duel_winner_text=24}] ~ ~ ~ 1 1.334840



playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=14}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=17}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=20}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=22}] ~ ~ ~ 1 1.334840

playsound minecraft:block.note_block.pling record @s[scores={duel_winner_text=24}] ~ ~ ~ 1 1.334840

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=1}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=4}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=7}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=10}] ~ ~ ~ 1 1.259921

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=12}] ~ ~ ~ 1 1.334840





playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=14}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=17}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=20}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=22}] ~ ~ ~ 1 1.334840

playsound minecraft:block.note_block.harp record @s[scores={duel_winner_text=24}] ~ ~ ~ 1 1.334840

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=1}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=4}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=7}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=10}] ~ ~ ~ 1 1.259921

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=12}] ~ ~ ~ 1 1.334840





playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=14}] ~ ~ ~ 1 0.5

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=17}] ~ ~ ~ 1 0.667420

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=20}] ~ ~ ~ 1 0.840896

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=22}] ~ ~ ~ 1 1.334840

playsound minecraft:block.note_block.flute record @s[scores={duel_winner_text=24}] ~ ~ ~ 1 1.334840


##



scoreboard players reset @s[scores={duel_winner_text=30..}] winner_text_cool
scoreboard players reset @s[scores={duel_winner_text=30..}] duel_winner_text