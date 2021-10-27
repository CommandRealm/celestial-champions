summon area_effect_cloud -6.87 64.4 24.18 {Tags:["check_sign","add","check_item_rate"],Duration:20}
summon area_effect_cloud -6.87 64.4 24.24 {Tags:["check_sign","add","check_item_rate"],Duration:20}
summon area_effect_cloud -6.87 64.4 24.12 {Tags:["check_sign","add","check_item_rate"],Duration:20}
summon area_effect_cloud -6.87 64.4 24.82 {Tags:["check_sign","remove","check_item_rate"],Duration:20}
summon area_effect_cloud -6.87 64.4 24.88 {Tags:["check_sign","remove","check_item_rate"],Duration:20}
summon area_effect_cloud -6.87 64.4 24.76 {Tags:["check_sign","remove","check_item_rate"],Duration:20}
function options:item_rate/raycast
kill @e[tag=check_sign,type=area_effect_cloud]