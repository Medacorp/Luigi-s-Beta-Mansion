execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}} 0
execute store result score #temp2 ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{id:"luigis_beta_mansion:poltergust_500"}} 0
execute if score #temp ActionTime matches 0 if score #temp2 ActionTime matches 0 run experience set @s 0 levels
execute if score #temp ActionTime matches 0 if score #temp2 ActionTime matches 0 run give @s minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.poltergust_3000"}',Lore:['{"italic":false,"color":"gray","translate":"luigis_mansion:item.poltergust_3000.element","with":[{"translate":"luigis_mansion:item.poltergust_3000.element.none","color":"gray"}]}']},luigis_mansion:{id:"luigis_mansion:poltergust_3000",poltergust_model_data:0,element:{type:0b}}}
scoreboard players reset #temp ActionTime
scoreboard players reset #temp2 ActionTime