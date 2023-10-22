##called to reset map 21
setblock 1003 84 -3036 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1002 84 -3037 minecraft:spruce_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1003 84 -3038 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1004 84 -3037 minecraft:spruce_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]
setblock 996 78 -3036 minecraft:jungle_trapdoor[facing=west,half=bottom,open=false,powered=false,waterlogged=false]
setblock 997 78 -3036 minecraft:jungle_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
setblock 990 79 -3034 minecraft:spruce_trapdoor[facing=west,half=bottom,open=false,powered=false,waterlogged=false]
setblock 990 78 -3034 minecraft:spruce_trapdoor[facing=west,half=top,open=false,powered=false,waterlogged=false]
setblock 1005 78 -3027 minecraft:spruce_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
setblock 1005 77 -3027 minecraft:spruce_trapdoor[facing=east,half=top,open=false,powered=false,waterlogged=false]
setblock 1011 80 -3009 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1012 80 -3008 minecraft:spruce_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1011 80 -3007 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1010 80 -3008 minecraft:spruce_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
setblock 996 77 -3009 minecraft:spruce_trapdoor[facing=west,half=bottom,open=false,powered=false,waterlogged=false]
setblock 996 76 -3009 minecraft:spruce_trapdoor[facing=west,half=top,open=false,powered=false,waterlogged=false]
setblock 990 78 -3001 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
setblock 989 78 -3000 minecraft:spruce_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
setblock 990 78 -2999 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
setblock 991 78 -3000 minecraft:spruce_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1006 74 -2978 minecraft:spruce_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
setblock 1006 73 -2978 minecraft:spruce_trapdoor[facing=east,half=top,open=false,powered=false,waterlogged=false]
setblock 1010 77 -2966 minecraft:spruce_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
setblock 1011 77 -2965 minecraft:spruce_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
setblock 1008 78 -2964 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1009 78 -2963 minecraft:spruce_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1008 78 -2962 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
setblock 1007 78 -2963 minecraft:spruce_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
fill 1007 74 -3002 1011 74 -3002 minecraft:spruce_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
fill 1005 74 -3006 1005 74 -3008 minecraft:spruce_trapdoor[facing=west,half=top,open=false,powered=false,waterlogged=false]
setblock 1005 75 -3006 minecraft:spruce_fence_gate[facing=south,in_wall=false,open=false,powered=false]
setblock 1010 73 -2968 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
setblock 1005 75 -3008 minecraft:spruce_fence_gate[facing=south,in_wall=false,open=false,powered=false]

tp @e[tag=this_map_die] 0 0 0
kill @e[tag=this_map_die]

summon leash_knot 991 78 -3034 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 1004 77 -3027 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 999 73 -3022 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 1005 73 -3022 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 999 72 -3012 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 1005 72 -3012 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 997 76 -3009 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 1005 75 -2999 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 997 74 -2994 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 1004 70 -2990 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 998 70 -2990 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 998 69 -2980 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 1004 69 -2980 {Invulnerable:1b,Tags:["this_map_die"]}
summon leash_knot 1005 73 -2978 {Invulnerable:1b,Tags:["this_map_die"]}

summon rabbit 999 72.5 -3012 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:999,Y:72,Z:-3017},Tags:["this_map_die"]}
summon rabbit 999 73.5 -3022 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:999,Y:72,Z:-3017},Tags:["this_map_die"]}
summon rabbit 1005 72.5 -3012 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:1005,Y:72,Z:-3017},Tags:["this_map_die"]}
summon rabbit 1005 73.5 -3022 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:1005,Y:72,Z:-3017},Tags:["this_map_die"]}
summon rabbit 998 70.5 -2990 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:998,Y:69,Z:-2985},Tags:["this_map_die"]}
summon rabbit 998 69.5 -2980 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:998,Y:69,Z:-2985},Tags:["this_map_die"]}
summon rabbit 1004 69.5 -2980 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:1004,Y:69,Z:-2985},Tags:["this_map_die"]}
summon rabbit 1004 70.5 -2990 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:20000000,show_particles:0b}],Leash:{X:1004,Y:69,Z:-2985},Tags:["this_map_die"]}