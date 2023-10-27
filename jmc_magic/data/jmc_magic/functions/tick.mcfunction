# Skull summoning tick
function jmc_magic:skull/skull_timer
function jmc_magic:skull/skull_event
function jmc_magic:skull/skull_timer_end

# Nuke summoning tick
function jmc_magic:nuke/nuke_timer
function jmc_magic:nuke/nuke_event
execute as @e[tag=point1] at @s positioned ~ ~1 ~ align y run function jmc_magic:nuke/nuke_point_spawn
execute as @a[scores={nuke_summon=1..}] at @s run function jmc_magic:ray/cast with entity @s

scoreboard players enable @a[scores={nuke_timer=..0}] nuke_summon
execute as @a[scores={nuke_timer=..0,nuke_summon=1..}] at @s run scoreboard players set @s nuke_summon 0