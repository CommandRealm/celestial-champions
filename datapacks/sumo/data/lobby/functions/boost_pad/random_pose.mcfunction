##Called to generate a random pose

##RNG (It's ten and there are nine options because the default is one of them.)
scoreboard players set $mod random 10
function random:random

##Poses
execute if score $rand random matches 0 run data merge entity @s {Pose:{Head:[318f,0f,0f],LeftArm:[160f,95f,0f],RightArm:[160f,265f,0f]}}
execute if score $rand random matches 1 run data merge entity @s {Pose:{Head:[26f,0f,0f],LeftArm:[90f,90f,0f],RightArm:[90f,270f,0f]}}
execute if score $rand random matches 2 run data merge entity @s {Pose:{Body:[0f,18f,0f],Head:[341f,29f,0f],LeftLeg:[38f,41f,0f],RightLeg:[349f,25f,0f],LeftArm:[31f,34f,0f],RightArm:[172f,145f,286f]}}
execute if score $rand random matches 3 run data merge entity @s {Pose:{LeftLeg:[279f,344f,0f],RightLeg:[286f,26f,0f]}}
execute if score $rand random matches 4 run data merge entity @s {Pose:{Head:[358f,0f,0f],LeftLeg:[60f,14f,0f],RightLeg:[54f,343f,0f],LeftArm:[213f,284f,0f],RightArm:[214f,69f,0f]}}
execute if score $rand random matches 5 run data merge entity @s {Pose:{LeftArm:[0f,0f,339f],RightArm:[160f,275f,343f]}}
execute if score $rand random matches 6 run data merge entity @s {Pose:{LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]}}
execute if score $rand random matches 7 run data merge entity @s {Pose:{Body:[0f,345f,0f],Head:[0f,341f,336f],LeftLeg:[14f,29f,0f],RightLeg:[333f,21f,0f],LeftArm:[272f,8f,0f],RightArm:[349f,343f,0f]}}
execute if score $rand random matches 8 run data merge entity @s {Pose:{Body:[6f,0f,0f],Head:[30f,0f,0f],LeftLeg:[29f,0f,0f],RightLeg:[322f,0f,0f],LeftArm:[50f,0f,0f],RightArm:[60f,0f,0f]}}
