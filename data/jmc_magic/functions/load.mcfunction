# Scoreboard setup for skull summoning spell
scoreboard objectives add skull_summon trigger
scoreboard objectives add skull_timer dummy
scoreboard objectives add SkullRot dummy
scoreboard players set .hSkull SkullRot 0
scoreboard players set .xSkull SkullRot 0
scoreboard players set .ySkull SkullRot 0
scoreboard players set .zSkull SkullRot 0
scoreboard players set @a skull_summon 0
scoreboard players set @a skull_timer 0

# Scoreboard setup for nuke summoning spell
scoreboard objectives add nuke_summon trigger
scoreboard objectives add nuke_timer dummy
scoreboard players set @a nuke_summon 0
scoreboard players set @a nuke_timer 0

scoreboard objectives add steps dummy
scoreboard players set @a steps 0
