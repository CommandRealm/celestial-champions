summon area_effect_cloud -6.87 64.4 26.18 {Tags:["check_sign","add","check_time_of_day"],Duration:20}
summon area_effect_cloud -6.87 64.4 26.24 {Tags:["check_sign","add","check_time_of_day"],Duration:20}
summon area_effect_cloud -6.87 64.4 26.12 {Tags:["check_sign","add","check_time_of_day"],Duration:20}
summon area_effect_cloud -6.87 64.4 26.82 {Tags:["check_sign","remove","check_time_of_day"],Duration:20}
summon area_effect_cloud -6.87 64.4 26.88 {Tags:["check_sign","remove","check_time_of_day"],Duration:20}
summon area_effect_cloud -6.87 64.4 26.76 {Tags:["check_sign","remove","check_time_of_day"],Duration:20}
function options:time_of_day/raycast
kill @e[tag=check_sign,type=area_effect_cloud]