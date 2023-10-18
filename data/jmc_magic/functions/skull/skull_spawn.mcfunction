# Break down the player's rotation into vector components
execute store result score in nnmath_trig run data get entity @s Rotation[1] 1
function nnmath:trig/sin_lt/exe
scoreboard players operation .ySkull SkullRot = out nnmath_trig
function nnmath:trig/cos_lt/exe
scoreboard players operation .hSkull SkullRot = out nnmath_trig
execute store result score in nnmath_trig run data get entity @s Rotation[0] 1
function nnmath:trig/sin_lt/exe
scoreboard players operation .xSkull SkullRot = out nnmath_trig
function nnmath:trig/cos_lt/exe
scoreboard players operation .zSkull SkullRot = out nnmath_trig
# Overflow protection for calculating the xz plane. This makes the x and z components 6 zeros shorter
scoreboard players operation .xSkull SkullRot /= 1000000 nnmath_trig
scoreboard players operation .zSkull SkullRot /= 1000000 nnmath_trig
scoreboard players operation .hSkull SkullRot /= 1000000 nnmath_trig
# Finalizing the x and z components. Even after this the x and z components are still 3 zeros shorter
scoreboard players operation .xSkull SkullRot *= .hSkull SkullRot
scoreboard players operation .zSkull SkullRot *= .hSkull SkullRot

# Set vector components as the skull's "power"
summon minecraft:wither_skull
execute store result entity @e[type=minecraft:wither_skull,sort=nearest,limit=1] power[0] double -0.0000002 run scoreboard players get .xSkull SkullRot
execute store result entity @e[type=minecraft:wither_skull,sort=nearest,limit=1] power[1] double -0.0000000002 run scoreboard players get .ySkull SkullRot
execute store result entity @e[type=minecraft:wither_skull,sort=nearest,limit=1] power[2] double 0.0000002 run scoreboard players get .zSkull SkullRot