tag @s[tag=elemental_ghost,scores={SpawnTime=21..}] add hurt_elemental_ghost
execute positioned as @s[tag=elemental_ghost,scores={SpawnTime=21..}] if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add normal_death
execute positioned as @s[tag=elemental_ghost,scores={SpawnTime=21..}] if entity @a[tag=me,distance=..1.2,limit=1] run function luigis_beta_mansion:items/poltergust_500/latch_onto_ghost
execute positioned as @s[tag=elemental_ghost,scores={SpawnTime=21..}] if block ^ ^ ^0.3 #luigis_mansion:items_ignore run teleport @s ^ ^ ^0.01