##Get firework function
clear @s firework_rocket
kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..15]
replaceitem entity @s weapon.offhand firework_rocket{Fireworks:{Flight:128},display:{Name:'[{"text":"Firework ","color":"red","italic":false},{"text":"Rocket","color":"gray"}]'}}