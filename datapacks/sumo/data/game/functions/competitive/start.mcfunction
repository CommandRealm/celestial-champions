##called when the competitive mode starts

scoreboard objectives remove points
scoreboard objectives add points dummy [{"text":"☀","color":"white","bold":false},{"text":" Points ","color":"aqua","bold":true},{"text":"☀","color":"white","bold":false}]
scoreboard players set @a[tag=playing] points 0

##setting fighting to 0
scoreboard players set $comp_fighting game 0

##resetting rounds
scoreboard players set $rounds game 0




##resetting storage
data remove storage game:comp 1
data remove storage game:comp 2
data remove storage game:comp 3
data merge storage game:comp {1:{},2:{},3:{},cur:{w_fighter:'',l_fighter:'',w_deaths:"",l_deaths:"",w:"",l:""}}