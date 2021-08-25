##Main tutorial function

####Knockback

##Individual timer
scoreboard players add $kb tutorial 1
execute if score $kb tutorial matches 1 run function lobby:tutorial/kb_start


##storing score
execute as @e[type=armor_stand,tag=tutorial_knockback] store result score $kb_pose tutorial run data get entity @s Pose.RightArm[0]

##adding kb Pose
execute if score $kb tutorial matches ..20 run scoreboard players remove $kb_pose tutorial 7
execute if score $kb tutorial matches 21..30 run scoreboard players add $kb_pose tutorial 9
execute if score $kb tutorial matches 31..55 run scoreboard players add $kb_pose tutorial 2
execute if score $kb tutorial matches 65 run function lobby:tutorial/kb_hit_over

##applying the pose
execute as @e[type=armor_stand,tag=tutorial_knockback] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get $kb_pose tutorial

##When we hit the zombie
execute if score $kb tutorial matches 30 run function lobby:tutorial/kb_hit


####Extra jumps
scoreboard players add $ej tutorial 1
execute if score $ej tutorial matches 1 run function lobby:tutorial/ej_start
execute if score $ej tutorial matches 60 run function lobby:tutorial/ej_jump

####Abilities
scoreboard players add $a tutorial 1
execute if score $a tutorial matches 1 run function lobby:tutorial/a_start
execute if score $a tutorial matches 20 run function lobby:tutorial/a_jump
execute if score $a tutorial matches 30 run function lobby:tutorial/a_ability

execute if score $a tutorial matches 80 run scoreboard players set $a tutorial 0

####Follow-up
scoreboard players add $f tutorial 1
execute if score $f tutorial matches 1 run function lobby:tutorial/f_start
execute if score $f tutorial matches 12 run function lobby:tutorial/f_jump
execute if score $f tutorial matches 27 run function lobby:tutorial/f_hit
execute if score $f tutorial matches 60 run scoreboard players set $f tutorial 0

##Particles
execute if entity @a[x=0,y=82,z=-46,distance=..14.75] positioned 0 82 -46 facing entity @e[type=area_effect_cloud,sort=nearest,limit=1,tag=boost_pad_name_text] eyes run function lobby:tutorial/particle_raycast