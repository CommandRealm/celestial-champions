##Called when we're hit by someone who has the potato.

##Giving us the potato
function item:poisonous_potato/pickup_potato
function item:poisonous_potato/get_potato
##Removing our advancement
advancement revoke @s only advancements:item/damaged_by_potato