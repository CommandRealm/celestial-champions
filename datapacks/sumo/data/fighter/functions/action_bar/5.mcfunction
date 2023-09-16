

##If player is on ground and ability is ready and damage is under 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"translate":"Ready","color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]


##If player is on ground and ability is not ready  and damage is under 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"red"},{"translate":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_red"}]




##If player is on ground and ability is ready and damage is under 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"translate":"Ready","color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]


##If player is on ground and ability is not ready and damage is under 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"red"},{"translate":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_red"}]


##If player is on ground and ability is ready and damage is under 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"translate":"Ready","color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is not ready and damage is under 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"red"},{"translate":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_red"}]


##If player is on ground and ability is ready and damage is under 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"translate":"Ready","color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"green"},{"translate":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is not ready  and damage is under 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"translate":"Knockback: ","color":"#d9000a","bold":false},{"translate":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"translate":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"translate":")","bold":true,"color":"gray"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Damage: ","color":"gray"},{"translate":"||||","bold":true,"color":"red"},{"translate":"|","color":"dark_red","bold":true},{"translate":"|||||","bold":true,"color":"white"},{"translate":" | ","color":"aqua","bold":true},{"translate":"Ability: ","color":"red"},{"translate":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"translate":")","bold":true,"color":"dark_red"}]
