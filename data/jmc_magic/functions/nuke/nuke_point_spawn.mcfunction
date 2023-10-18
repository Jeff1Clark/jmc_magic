summon marker ~ ~7 ~ {Tags:[c1]}
summon marker ~ ~7 ~ {Tags:[c2]}
execute as @s at @s positioned ~ ~7 ~ run scoreboard players add @e[tag=c1,limit=1,sort=nearest] nuke_timer 100
kill @s