tag @s[tag=beta_shining_ghost,tag=visible] add fleeing
execute positioned as @s[tag=beta_shining_ghost,tag=visible] if block ^ ^2 ^0.3 #luigis_mansion:ghosts_ignore unless entity @a[tag=me,distance=..1.2,limit=1] run teleport @s ^ ^ ^0.1
execute positioned as @s[tag=beta_shining_ghost,tag=visible] if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add normal_death
execute positioned as @s[tag=beta_shining_ghost,tag=visible] if entity @a[tag=me,distance=..1.2,limit=1] run function luigis_beta_mansion:items/poltergust_500/latch_onto_ghost