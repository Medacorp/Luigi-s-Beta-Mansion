execute if entity @s[tag=!element_hurt,tag=!hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0}] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[tag=!element_hurt,tag=!hurt,tag=!fleeing,tag=!collided,tag=attack,scores={StunTime=0}] run function luigis_beta_mansion:entities/beta_ghost/attack