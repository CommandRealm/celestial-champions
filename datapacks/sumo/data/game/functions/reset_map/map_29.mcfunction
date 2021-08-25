##Function that resets map 1

setblock -1986 70 978 minecraft:spruce_trapdoor[facing=east,half=bottom,open=true]
setblock -1983 70 978 minecraft:spruce_trapdoor[facing=west,half=bottom,open=true]

fill -1995 74 1021 -2008 74 1021 minecraft:lever[face=wall,facing=west,powered=false] replace lever

setblock -1984 72 1023 lever[face=wall,facing=south,powered=false]

setblock -1984 72 1019 minecraft:lever[face=wall,facing=north,powered=false]

setblock -2016 72 1023 lever[face=wall,facing=south,powered=false]

setblock -2016 72 1019 minecraft:lever[face=wall,facing=north,powered=false]

fill -2010 69 1000 -1990 69 1000 lever[face=wall,facing=east,powered=false] replace lever[facing=east]

fill -2010 69 1000 -1990 69 1000 lever[face=wall,facing=west,powered=false] replace lever[facing=west]