execute unless entity @a[scores={LastRoom=73},limit=1] run function #luigis_beta_mansion:room/original/missingno_57/reset
execute as @e[scores={Room=73},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_57 Vacuumables