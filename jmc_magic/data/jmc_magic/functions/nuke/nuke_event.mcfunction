execute as @e[tag=c1] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=c2] at @s run tp @s ~ ~ ~ ~-1 ~
execute as @e[tag=c1] at @s run function jmc_magic:nuke/nuke_c1
execute as @e[tag=c2] at @s run function jmc_magic:nuke/nuke_c2

execute as @e[tag=c1,scores={nuke_timer=50}] at @s run playsound jmc_magic:nukes player @a ~ ~ ~ 2
execute as @e[tag=c1,scores={nuke_timer=..0}] at @s run function jmc_magic:nuke/nuke_spawn with entity @s data