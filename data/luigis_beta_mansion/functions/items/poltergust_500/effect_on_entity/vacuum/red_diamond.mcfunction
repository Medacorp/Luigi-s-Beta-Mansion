execute positioned ~ ~-1.1 ~ positioned as @s[tag=vacuumable,distance=..1.4,tag=item,tag=red_diamond] run function luigis_mansion:entities/item/pull
execute positioned ~ ~-1.1 ~ positioned as @s[tag=vacuumable,distance=..1.4,tag=item,tag=red_diamond] positioned ~ ~1.3 ~ if entity @a[tag=me,distance=..0.7,limit=1] run tag @s add captured