##Get firework function
clear @s firework_rocket
kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..15]
item replace entity @s weapon.offhand with firework_rocket{Fireworks:{Flight:-1},display:{Name:'[{"text":"Firework ","color":"red","italic":false},{"text":"Rocket","color":"gray"}]'}}