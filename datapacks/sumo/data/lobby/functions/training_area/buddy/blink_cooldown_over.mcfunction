##Called to run a function
execute if score $blink_state training_area matches 0 if score $blink_cooldown training_area matches ..0 run function lobby:training_area/buddy/start_blinking
execute if score $blink_state training_area matches 1 if score $blink_cooldown training_area matches ..0 run function lobby:training_area/buddy/stop_blinking