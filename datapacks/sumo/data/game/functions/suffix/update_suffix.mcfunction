##Update suffixes


execute if entity @a[tag=update_suffix,scores={lives=11..}] run function game:suffix/update_suffix_11_plus
execute if entity @a[tag=update_suffix,scores={lives=..10}] run function game:suffix/update_suffix_10_minus
execute if entity @a[tag=update_suffix,scores={lives=100}] run function game:suffix/infinite