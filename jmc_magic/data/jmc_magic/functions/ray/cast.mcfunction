# Summon a ray at the caster
$summon marker ~ ~ ~ {Tags: [ray],data:{nUUID:$(UUID)}}

# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

# Process the ray
execute as @e[tag=ray,limit=1,sort=nearest] run function jmc_magic:ray/process
