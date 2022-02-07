execute if entity @s[scores={HurtTime=10,Health=1..},tag=!dialog] at @s run function luigis_mansion:items/poltergust_3000/vacuuming/hurt_ghost
execute unless entity @s[scores={HurtTime=30..,Health=1..}] run tag @a[tag=me,limit=1] add is_pulling
execute at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 positioned ^ ^ ^1 unless entity @a[tag=me,distance=..1.01,limit=1] if entity @s[scores={HurtTime=30..,Health=1..},tag=!dialog] at @s run function luigis_mansion:items/poltergust_3000/vacuuming/hurt_ghost
execute rotated as @a[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/ghost_step
scoreboard players reset #temp Steps
tag @s remove being_vacuumed
execute if entity @a[tag=me,limit=1,tag=!vacuuming] run playsound luigis_beta_mansion:item.poltergust_500.vacuuming_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @a[tag=me,limit=1,tag=!vacuuming] PoltergustSound 20
execute if entity @a[tag=me,limit=1,tag=vacuuming,scores={PoltergustSound=0}] run playsound luigis_beta_mansion:item.poltergust_500.vacuuming player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @a[tag=me,limit=1,tag=vacuuming,scores={PoltergustSound=0}] PoltergustSound 20