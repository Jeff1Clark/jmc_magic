# Initialize steps
scoreboard players set @s steps 64

# Move the ray
execute at @s run function jmc_magic:ray/move

# Check if the ray hit a Block
execute as @s[tag=hitBlock] at @s run function jmc_magic:ray/hit

# Destroy the ray (very important!)
kill @s
