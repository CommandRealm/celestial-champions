##Get firework function
clear @s firework_rocket
kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..15]
item replace entity @s weapon.offhand with firework_rocket{Fireworks:{Flight:-1},display:{Name:'[{"translate":"Firework ","color":"red","italic":false},{"translate":"Rocket","color":"gray"}]'}}