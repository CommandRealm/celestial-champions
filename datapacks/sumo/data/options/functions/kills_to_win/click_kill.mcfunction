summon area_effect_cloud 7.87 64.4 24.18 {Tags:["check_sign","remove","check_kills"],Duration:20}
summon area_effect_cloud 7.87 64.4 24.24 {Tags:["check_sign","remove","check_kills"],Duration:20}
summon area_effect_cloud 7.87 64.4 24.12 {Tags:["check_sign","remove","check_kills"],Duration:20}
summon area_effect_cloud 7.87 64.4 24.82 {Tags:["check_sign","add","check_kills"],Duration:20}
summon area_effect_cloud 7.87 64.4 24.88 {Tags:["check_sign","add","check_kills"],Duration:20}
summon area_effect_cloud 7.87 64.4 24.76 {Tags:["check_sign","add","check_kills"],Duration:20}
function options:kills_to_win/raycast
kill @e[tag=check_sign,type=area_effect_cloud]