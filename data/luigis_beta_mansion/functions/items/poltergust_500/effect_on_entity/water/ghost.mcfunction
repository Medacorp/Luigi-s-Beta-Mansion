execute unless entity @s[tag=basher,tag=!visible] run tag @s[tag=ghost,tag=!watery_heart,tag=!frozen_heart,tag=!vacuumable,tag=!portrait_ghost,tag=!boo,tag=!hurt_animation,tag=!vanish,tag=!appear,tag=!fleeing,tag=!elemental_ghost] add element_hurt
execute unless entity @s[tag=basher,tag=!visible] if entity @s[tag=ghost,tag=!watery_heart,tag=!frozen_heart,tag=!vacuumable,tag=!portrait_ghost,tag=!boo,tag=!hurt_animation,tag=!vanish,tag=!appear,tag=!fleeing,tag=!elemental_ghost] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost