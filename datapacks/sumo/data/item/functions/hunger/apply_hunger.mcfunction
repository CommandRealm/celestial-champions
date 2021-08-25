execute as @a unless entity @s[scores={hunger=19..}] run effect give @s saturation
execute as @a unless entity @s[scores={hunger=..19}] run effect give @s hunger 1 255 true
effect clear @a[scores={hunger=..18}] hunger
effect give @a[scores={hunger=..18}] saturation 1 0 true