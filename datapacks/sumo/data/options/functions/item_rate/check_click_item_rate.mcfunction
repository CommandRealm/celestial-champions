##Making sure this isn't COMP
execute if score $mode settings matches 4 run function options:item_rate/error_comp
execute unless score $mode settings matches 4 run function options:item_rate/click_item_rate