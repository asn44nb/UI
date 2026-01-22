function ui:menu/execute with storage ui in[0].components."minecraft:custom_data".ui_item
execute as @p[limit=1,sort=arbitrary] at @s positioned ~ ~ ~ rotated as @s run playsound minecraft:ui.button.click player @s ~ ~ ~
execute if score .type ui matches 1 run function ui:minecart/load_page