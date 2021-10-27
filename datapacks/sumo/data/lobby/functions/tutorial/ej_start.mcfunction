##Called to summon our armor stands

##sound
playsound minecraft:entity.enderman.teleport master @a 6 84 -65 1 1

##Kill
kill @e[type=armor_stand,tag=tutorial_ej_asset]

##Resetting score
scoreboard players set $ej_jump tutorial 0

##armor stands
summon armor_stand 5 84 -65 {Pose:{RightArm:[1.0f,0.0f,0.0f]},HandItems:[{id:"minecraft:nether_star",Count:1b},{}],Rotation:[90f,0f],DisabledSlots:2039583,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15459033}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9407108}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8232904}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1706158226,-2029172357,-1939623872,-874332322],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ1NDM4YjVlOWU2NzkyOWIxYWNjNThmMDMzNDI3ZDAzNmNmNTM3NjBmYWZlYTk5Y2Y1MzRlOWRkMWU1YjUyMSJ9fX0="}]}}}}],Tags:["tutorial_asset","tutorial_extra_jumps","tutorial_ej_asset"],CustomName:'[{"text":"0%","color":"white","bold":true}]',CustomNameVisible:1b}
