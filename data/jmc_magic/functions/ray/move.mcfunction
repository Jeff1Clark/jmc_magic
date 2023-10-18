# Move forward according to step size
tp @s ^ ^ ^0.5

# TEST
# particle flame ~ ~ ~ 0 0 0 0 1 force

# Check for collisions with entities
# execute if entity @e[type=ENTITY,distance=..1.5] run tag @s add hitEntity

# Check for collisions with blocks
execute unless block ~ ~ ~ #jmc_magic:ray_permeable run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit a block or run out of steps
execute as @s[tag=!hitEntity,tag=!hitBlock,scores={steps=1..}] at @s run function jmc_magic:ray/move

# Use instead if collision with entities is also enabled
# execute as @s[tag=!hitEntity,tag=!hitBlock,scores={steps=1..}] at @s run function jmc_magic:ray/move

# Use instead if ONLY collision with entities is enabled
# execute as @s[tag=!hitEntity,scores={steps=1..}] at @s run function jmc_magic:ray/move
