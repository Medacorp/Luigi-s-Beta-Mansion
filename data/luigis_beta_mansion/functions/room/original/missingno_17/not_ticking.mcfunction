execute unless entity @a[scores={LastRoom=33},limit=1] run function #luigis_beta_mansion:room/original/missingno_17/reset
execute as @e[scores={Room=33},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_17 Vacuumables