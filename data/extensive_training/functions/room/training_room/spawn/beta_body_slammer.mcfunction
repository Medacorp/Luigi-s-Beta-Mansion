function luigis_beta_mansion:spawn_entities/ghost/forced_spawn/body_slammer
tag @e[distance=..1,tag=hidden,limit=1] add no_appear
tag @e[distance=..1,tag=hidden,limit=1] add disappear_on_vanish
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 1000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 1000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Move 10
scoreboard players set @e[distance=..1,tag=hidden,limit=1] MoveFlee 20