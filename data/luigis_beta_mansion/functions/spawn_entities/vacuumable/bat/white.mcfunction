summon minecraft:armor_stand ~ ~-0.2 ~ {CustomName:'{"translate":"luigis_mansion:entity.bat"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:14,display:{color:15395562}}}],HandItems:[{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:15,display:{color:15395562}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:15,display:{color:15395562}}}],Pose:{RightArm:[180.0f,0.0f,0.01f],LeftArm:[180.0f,0.0f,0.01f],Head:[180.0f,0.0f,0.01f]},Tags:["beta_bat","ghost","optional_ghost","ghost","vacuumable","visible","bat","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.beta_bat.speed
tag @e[tag=this_entity,limit=1] remove this_entity