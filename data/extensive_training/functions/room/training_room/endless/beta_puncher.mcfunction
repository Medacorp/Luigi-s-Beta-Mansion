execute if entity @e[type=minecraft:marker,tag=selected,tag=beta_puncher,limit=1] run function extensive_training:room/training_room/spawn/beta_puncher
execute unless entity @e[type=minecraft:marker,tag=selected,limit=1] if score #training_room Wave matches 2.. run summon minecraft:marker ~ ~ ~ {Tags:["select_ghost","beta_puncher"]}