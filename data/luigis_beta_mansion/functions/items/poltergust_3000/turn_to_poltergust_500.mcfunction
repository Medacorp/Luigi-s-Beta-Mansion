experience set @s 0 levels
summon minecraft:armor_stand ~ 0 ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{id:"luigis_mansion:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items set from entity @s Inventory
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}].tag set value {HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"luigis_beta_mansion:item.poltergust_500"}'},luigis_mansion:{id:"luigis_beta_mansion:poltergust_500",poltergust_model_data:8}}
execute as @e[tag=inventory,limit=1] run function luigis_mansion:other/inventory_boxes/set
function luigis_mansion:other/inventory_boxes/load