##Main function for when a player is playing as the guardian.

##If there is a guardian shooter
execute if entity @e[type=guardian,tag=guardian_shooter] run function fighter:guardian/active_guardian

execute if entity @e[type=marker,tag=guardian_laser] run function fighter:guardian/active_laser