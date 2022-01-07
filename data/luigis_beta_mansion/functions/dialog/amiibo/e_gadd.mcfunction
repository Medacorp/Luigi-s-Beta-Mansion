execute if entity @s[scores={Dialog=58}] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} run scoreboard players set #amiibo_available Selected 1
execute if entity @s[scores={Dialog=124}] if entity @a[scores={EGaddLabChoice=7},limit=1] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} if score #e_gadd_amiibo Selected matches 0 run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.hover_event","with":[{"translate":"luigis_beta_mansion:dialog.underground_lab.change_amiibo.e_gadd.on","color":"green","color":"green","clickEvent":{"action":"run_command","value":"/trigger AmiiboChoice set 6"},"hoverEvent":{"action":"show_text","contents":{"translate":"luigis_beta_mansion:dialog.underground_lab.change_amiibo.e_gadd.hover"}}}]}
execute if entity @s[scores={Dialog=124}] if entity @a[scores={EGaddLabChoice=7},limit=1] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} if score #e_gadd_amiibo Selected matches 1 run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.hover_event","with":[{"translate":"luigis_beta_mansion:dialog.underground_lab.change_amiibo.e_gadd.off","color":"green","color":"green","clickEvent":{"action":"run_command","value":"/trigger AmiiboChoice set 6"},"hoverEvent":{"action":"show_text","contents":{"translate":"luigis_beta_mansion:dialog.underground_lab.change_amiibo.e_gadd.hover"}}}]}
execute if entity @s[scores={Dialog=126}] if entity @a[scores={AmiiboChoice=5},limit=1] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} if score #e_gadd_amiibo Selected matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.underground_lab.change_amiibo.2.e_gadd.on"}]}
execute if entity @s[scores={Dialog=126}] if entity @a[scores={AmiiboChoice=5},limit=1] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} if score #e_gadd_amiibo Selected matches 0 run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=126}] if entity @a[scores={AmiiboChoice=5},limit=1] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} if score #e_gadd_amiibo Selected matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.underground_lab.change_amiibo.2.e_gadd.off"}]}
execute if entity @s[scores={Dialog=126}] if entity @a[scores={AmiiboChoice=5},limit=1] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} if score #e_gadd_amiibo Selected matches 1 run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=126}] if entity @a[scores={AmiiboChoice=5},limit=1] if data storage luigis_beta_mansion:data current_state.trophy{done:1b} run scoreboard players add #e_gadd_amiibo Selected 1