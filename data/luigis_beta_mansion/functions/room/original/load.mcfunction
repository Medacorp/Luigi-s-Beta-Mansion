execute unless score #loaded_exterior Selected matches 1 in minecraft:overworld run function luigis_beta_mansion:room/load_exterior/beta_mansion
experience set @s 0 levels
execute if entity @a[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/no_element
execute unless score #mansion_type Selected matches 2 run function luigis_beta_mansion:room/original/load_data
function luigis_mansion:room/underground_lab/leave