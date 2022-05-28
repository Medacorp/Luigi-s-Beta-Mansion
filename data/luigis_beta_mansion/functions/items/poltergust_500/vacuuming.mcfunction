summon minecraft:marker ~ ~ ~ {Tags:["interact","vacuum","poltergust"]}
scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
tag @s add me
execute as @e[tag=ghost,tag=same_room,scores={VulnerableTime=1..}] run function luigis_beta_mansion:items/poltergust_500/attacking_ghost
execute if score #temp GhostCount > @s GhostCount run scoreboard players operation @s GhostCount = #temp GhostCount
execute if score #temp GhostCount matches 1.. run function luigis_beta_mansion:items/poltergust_500/get_old_position
execute if score #temp GhostCount matches 1.. at @s rotated ~ 0 run function luigis_beta_mansion:items/poltergust_500/vacuuming/attack_ghost
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] facing entity @s feet run function luigis_beta_mansion:items/poltergust_500/vacuuming/ghost
execute if score #temp GhostCount matches 1.. run tag @s[tag=is_pulling] remove made_error
execute if score #temp GhostCount matches 1.. run scoreboard players set @s[tag=is_pulling] ErrorTime 0
execute if score #temp GhostCount matches 1.. run scoreboard players add @s[tag=!is_pulling] ErrorTime 1
execute if score #temp GhostCount matches 1.. if entity @s[scores={ErrorTime=10..}] run function luigis_beta_mansion:items/poltergust_500/vacuuming/made_error
execute unless score #temp GhostCount matches 1.. run tag @s remove made_error
execute unless score #temp GhostCount matches 1.. run scoreboard players set @s VacuumErrors 0
execute unless score #temp GhostCount matches 1.. run scoreboard players set @s ErrorTime 0
execute unless score #temp GhostCount matches 1.. unless entity @e[tag=ball,distance=..2.5,tag=can_spit,limit=1] run function luigis_beta_mansion:items/poltergust_500/vacuuming/default
execute unless score #temp GhostCount matches 1.. if entity @e[tag=ball,distance=..2.5,tag=can_spit,sort=nearest,limit=1] run function luigis_beta_mansion:items/poltergust_500/vacuuming/get_clogged
execute if score #temp GhostCount matches 1.. run tag @s add vacuuming_ghost
execute as @e[distance=..3,tag=captured,tag=!element_death] at @s run function luigis_beta_mansion:items/poltergust_500/vacuuming/capture
scoreboard players reset #temp GhostCount
scoreboard players reset #temp Room
scoreboard players reset #temp ID
experience add @s 1 levels
tag @s add vacuuming
tag @s remove expelling_water
scoreboard players set @s[tag=!made_error] Pull 0
execute if entity @s[scores={DamagePitch=1,DamagePitchTimer=6}] run playsound luigis_beta_mansion:item.poltergust_500.damage hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={DamagePitch=2,DamagePitchTimer=6}] run playsound luigis_beta_mansion:item.poltergust_500.damage hostile @a ~ ~ ~ 1 1.2
execute if entity @s[scores={DamagePitch=3,DamagePitchTimer=6}] run playsound luigis_beta_mansion:item.poltergust_500.damage hostile @a ~ ~ ~ 1 1.4
execute if entity @s[scores={DamagePitch=4,DamagePitchTimer=6}] run playsound luigis_beta_mansion:item.poltergust_500.damage hostile @a ~ ~ ~ 1 1.6
execute if entity @s[scores={DamagePitch=5,DamagePitchTimer=6}] run playsound luigis_beta_mansion:item.poltergust_500.damage hostile @a ~ ~ ~ 1 1.8
execute if entity @s[scores={DamagePitch=6..,DamagePitchTimer=6}] run playsound luigis_beta_mansion:item.poltergust_500.damage hostile @a ~ ~ ~ 1 2
scoreboard players set @s[scores={DamagePitchTimer=0}] DamagePitch 0
scoreboard players remove @s[scores={DamagePitchTimer=1..}] DamagePitchTimer 1
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
tag @s remove me
tag @s remove vacuumed_door
tag @e[tag=already_hurt] remove already_hurt
kill @e[type=minecraft:marker,tag=interact,limit=1]
kill @e[type=minecraft:marker,tag=position,limit=1]