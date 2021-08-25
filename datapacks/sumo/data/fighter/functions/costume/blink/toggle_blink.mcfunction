##Function that toggles blink

##Start blinking
execute if entity @s[tag=!is_blinking] run function fighter:costume/blink/start_blinking

##Stop blinking (There is score detection here so that it doesn't run every time the previous function runs)
execute if entity @s[tag=is_blinking,scores={blink=0}] run function fighter:costume/blink/stop_blinking