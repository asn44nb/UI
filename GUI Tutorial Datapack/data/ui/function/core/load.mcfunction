# ---------------------------------------------------------
# [System] Load-once Initializer (Single File Edition)
# ---------------------------------------------------------

# 1.
tellraw @a {"text":"[System] Datapack yükleniyor...","color":"yellow"}
scoreboard objectives add sys dummy
execute if score #loaded sys matches 1 run return run tellraw @s {"text":"DATAPACK ZATEN ETKİN!","italic":false,"bold":true,"color":"red"}

# 2.
execute unless score #loaded sys matches 1 run scoreboard objectives add ui.id dummy
execute unless score #loaded sys matches 1 run scoreboard objectives add ui dummy
execute unless score #loaded sys matches 1 run setblock 0 -64 0 yellow_shulker_box replace
execute unless score #loaded sys matches 1 run data merge storage ui:config {System:{Loaded:1b,Version:"1.0"}}
execute unless score #loaded sys matches 1 run data merge storage ui:main {initialized:1b}
execute unless score #loaded sys matches 1 run scoreboard players set #next ui.id 1
execute unless score #loaded sys matches 1 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2 1
execute unless score #loaded sys matches 1 run tellraw @a ["",{"text":"[System] ","color":"dark_aqua"},{"text":"İlk kurulum tamamlandı! ✅","color":"green"}]

# 3.
scoreboard players set #loaded sys 1