tag @a[scores={skull_summon=1..,skull_timer=..0}] add skull_summoner
scoreboard players set @a[tag=skull_summoner] skull_timer 60
execute as @a[scores={skull_timer=60..}] run tag @s remove skull_summoner