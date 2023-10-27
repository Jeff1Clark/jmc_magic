$summon marker ~ ~ ~ {Tags:[c1],data:$(data)}
summon marker ~ ~ ~ {Tags:[c2]}
scoreboard players add @e[tag=c1,limit=1,sort=nearest] nuke_timer 60
kill @s