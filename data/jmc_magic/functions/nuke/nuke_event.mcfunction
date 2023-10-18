execute as @e[tag=c1] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=c2] at @s run tp @s ~ ~ ~ ~-1 ~
execute as @e[tag=c1] at @s run function jmc_magic:nuke/nuke_c1
execute as @e[tag=c2] at @s run function jmc_magic:nuke/nuke_c2

execute as @e[tag=c1,scores={nuke_timer=20}] at @s run function jmc_magic:nuke/nuke_spawn
execute as @e[tag=c1,scores={nuke_timer=..0}] at @s run kill @e[type=marker,limit=2,sort=nearest]