##Function that resets map 11

fill -17 77 2987 -17 73 2994 lever[face=wall,powered=false,facing=east] replace minecraft:lever
fill -16 76 2979 -18 79 2979 lever[face=floor,facing=south,powered=true] replace lever
setblock 19 76 2962 minecraft:spruce_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
setblock 19 76 2956 minecraft:spruce_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]