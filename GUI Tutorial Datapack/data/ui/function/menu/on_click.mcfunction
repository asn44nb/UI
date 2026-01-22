function ui:menu/execute with storage ui in[0].components."minecraft:custom_data".ui_item
playsound minecraft:ui.button.click player @s ~ ~ ~
execute if score .type ui matches 1 run function ui:minecart/load_page