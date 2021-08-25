summon area_effect_cloud -6.87 64.4 22.18 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -6.87 64.4 22.24 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -6.87 64.4 22.12 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -6.87 64.4 22.82 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
summon area_effect_cloud -6.87 64.4 22.88 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
summon area_effect_cloud -6.87 64.4 22.76 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
function options:auto_ready/raycast
kill @e[tag=check_sign,type=area_effect_cloud]