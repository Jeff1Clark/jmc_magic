kill @e[type=marker,limit=2,sort=nearest]

function jmc_magic:nuke/nuke_particle
playsound entity.generic.explode player @a ~ ~ ~ 2
$execute as @e[distance=..6] run damage @s 100 player_explosion by @a[nbt={UUID:$(nUUID)},limit=1]