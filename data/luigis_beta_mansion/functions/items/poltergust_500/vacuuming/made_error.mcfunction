execute if score #e_gadd_amiibo Selected matches 0 run scoreboard players add @s[tag=!made_error] VacuumErrors 1
execute if score #e_gadd_amiibo Selected matches 1 run scoreboard players add @s[tag=!made_error,scores={Room=..0}] VacuumErrors 1
execute if entity @s[tag=!made_error] if score #debug Selected matches 1 run say [DEBUG] Made a vacuuming mistake.
tag @s add made_error
scoreboard players add @s Pull 1
execute if entity @s[scores={Pull=10,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Pull=10,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={Pull=10,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Pull=10,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if score #koopa_amiibo Selected matches 0 if entity @s[scores={Pull=20..},gamemode=!creative] run function luigis_mansion:entities/player/pulled_damage
execute if score #koopa_amiibo Selected matches 1 if entity @s[scores={Pull=20..,Room=..0},gamemode=!creative] run function luigis_mansion:entities/player/pulled_damage
execute if entity @s[scores={VacuumErrors=10..}] positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/large