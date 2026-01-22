execute as @a run function ui:player/tick
execute as @e[type=chest_minecart,tag=ui] run function ui:minecart/tick
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{ui_item:{}}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{ui:1b}}}}]