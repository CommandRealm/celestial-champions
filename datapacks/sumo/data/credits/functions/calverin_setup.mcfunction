kill @e[tag=calverin,type=armor_stand]
summon minecraft:armor_stand -93 76.5 -3 {Tags:["credits","calverin","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[-67.5f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1971856918,-2122366240,-1876765928,455707243],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZGI5YzFiNDg1YjZhNDE0ZWU4MGFkY2RjNWFlYTkzMjhiMzYyZTJlNjExOWQ0MDVmYTQyNzQ1MGUxMzQ4ZCJ9fX0="}]}}}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[-30.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
scoreboard objectives add calverin dummy
data merge entity @e[tag=calverin,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[1f,0f,0f]}}


replaceitem entity @e[tag=calverin] armor.feet leather_boots{display:{color:15591960}}
replaceitem entity @e[tag=calverin] armor.chest leather_chestplate{display:{color:9079434}}
replaceitem entity @e[tag=calverin] armor.legs leather_leggings{display:{color:0}}
