execute as @a[scores={skull_timer=60}] at @s run playsound jmc_magic:bone player @s ~ ~ ~
execute as @a[scores={skull_timer=1..}] at @s anchored eyes positioned ^ ^ ^0.75 run function jmc_magic:skull/skull_particle
execute as @a[scores={skull_timer=20}] at @s anchored eyes positioned ^ ^ ^1 run function jmc_magic:skull/skull_spawn
execute as @a[scores={skull_timer=10}] at @s run playsound jmc_magic:bone player @s ~ ~ ~
execute as @a[scores={skull_timer=1}] run scoreboard players enable @s skull_summon