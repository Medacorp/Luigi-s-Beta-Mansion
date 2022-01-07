execute if entity @s[tag=!portrait_ghost] run playsound luigis_beta_mansion:item.poltergust_500.catch player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=portrait_ghost] run playsound luigis_beta_mansion:item.poltergust_500.catch_portrait_ghost player @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust 0.7 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove capture
tag @s add dead