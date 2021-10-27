##called to update our winner display text
scoreboard players add @s duel_winner_text 1
scoreboard players set @s winner_text_cool 2

##reset subtitle
title @s subtitle [{"text":""}]

title @s[scores={duel_winner_text=1}] title [{"text":"W","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=2}] title [{"text":"WI","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=3}] title [{"text":"WIN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=4}] title [{"text":"WINN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=5}] title [{"text":"WINNE","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=6}] title [{"text":"WINNER","bold":true,"color":"yellow"}]

title @s[scores={duel_winner_text=7}] title [{"text":"W","bold":true,"color":"gold"},{"text":"INNER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=8}] title [{"text":"WI","bold":true,"color":"gold"},{"text":"NNER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=9}] title [{"text":"WIN","bold":true,"color":"gold"},{"text":"NER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=10}] title [{"text":"WINN","bold":true,"color":"gold"},{"text":"ER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=11}] title [{"text":"WINNE","bold":true,"color":"gold"},{"text":"R","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=12}] title [{"text":"WINNER","bold":true,"color":"gold"}]

title @s[scores={duel_winner_text=13}] title [{"text":"W","bold":true,"color":"yellow"},{"text":"I","bold":true,"color":"gold"},{"text":"N","bold":true,"color":"yellow"},{"text":"N","bold":true,"color":"gold"},{"text":"E","bold":true,"color":"yellow"},{"text":"R","bold":true,"color":"gold"}]
title @s[scores={duel_winner_text=15}] title [{"text":"W","bold":true,"color":"gold"},{"text":"I","bold":true,"color":"yellow"},{"text":"N","bold":true,"color":"gold"},{"text":"N","bold":true,"color":"yellow"},{"text":"E","bold":true,"color":"gold"},{"text":"R","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=17}] title [{"text":"W","bold":true,"color":"yellow"},{"text":"I","bold":true,"color":"gold"},{"text":"N","bold":true,"color":"yellow"},{"text":"N","bold":true,"color":"gold"},{"text":"E","bold":true,"color":"yellow"},{"text":"R","bold":true,"color":"gold"}]
title @s[scores={duel_winner_text=19}] title [{"text":"W","bold":true,"color":"gold"},{"text":"I","bold":true,"color":"yellow"},{"text":"N","bold":true,"color":"gold"},{"text":"N","bold":true,"color":"yellow"},{"text":"E","bold":true,"color":"gold"},{"text":"R","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=21}] title [{"text":"W","bold":true,"color":"yellow"},{"text":"I","bold":true,"color":"gold"},{"text":"N","bold":true,"color":"yellow"},{"text":"N","bold":true,"color":"gold"},{"text":"E","bold":true,"color":"yellow"},{"text":"R","bold":true,"color":"gold"}]

title @s[scores={duel_winner_text=23}] title [{"text":"WINNER","bold":true,"color":"yellow"}]


title @s[scores={duel_winner_text=24}] title [{"text":"WINNER","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=25}] title [{"text":"WINNE","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=26}] title [{"text":"WINN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=27}] title [{"text":"WIN","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=28}] title [{"text":"WI","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=29}] title [{"text":"W","bold":true,"color":"yellow"}]
title @s[scores={duel_winner_text=30}] title [{"text":"","bold":true,"color":"yellow"}]


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