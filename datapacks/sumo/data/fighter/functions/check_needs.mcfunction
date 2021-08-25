##Looks for what functions need to be run and calls them

##If player needs costume
execute if entity @a[tag=needs_costume] run function fighter:costume/main

##If player needs ability things running
execute if entity @a[tag=is_fighter] run function fighter:main

##They're in two separate functions because there are times when you want the costume to be updating but not the abilities.