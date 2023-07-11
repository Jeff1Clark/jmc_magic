# adding skull_timer
tag @a[scores={skull_summon=1..,skull_timer=..0}] add skull_summoner
scoreboard players set @a[tag=skull_summoner] skull_timer 100
execute as @a[scores={skull_timer=100..}] run tag @s remove skull_summoner

#timed events
execute as @a[scores={skull_timer=1..}] at @s anchored eyes facing entity @s eyes positioned ^ ^ ^0.7 run function jmc_magic:c1
execute as @a[scores={skull_timer=100}] at @s run playsound block.conduit.activate player @s ~ ~ ~

# resettimg skull_timer
scoreboard players remove @a[tag=!time,scores={skull_timer=1..}] skull_timer 1
scoreboard players set @a[scores={skull_timer=..0}] skull_summon 0
scoreboard players enable @a[scores={skull_timer=..0}] skull_summon

