##called with an invalid toggle map press
tellraw @a[x=3,y=54,z=24,distance=..5] [{"translate":"Please press this again when the game is over.","color":"red"}]
playsound minecraft:block.note_block.didgeridoo master @a 3 54 24 1 0.75