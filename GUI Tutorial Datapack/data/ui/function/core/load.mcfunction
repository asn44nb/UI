# ---------------------------------------------------------
# [System] Load-once Initializer (Single File Edition)
# ---------------------------------------------------------

# 1. HER SEFERİNDE ÇALIŞANLAR
scoreboard objectives add sys dummy
tellraw @a {"text":"[System] Datapack yüklendi","color":"yellow"}

# 2. SADECE İLK SEFERDE ÇALIŞANLAR (Koşul: #loaded != 1)
# 'run function' yerine 'run execute' ile alt komutları bağlayarak tek blokta topluyoruz.

execute unless score #loaded sys matches 1 run scoreboard objectives add ui.id dummy
execute unless score #loaded sys matches 1 run scoreboard objectives add ui dummy
execute unless score #loaded sys matches 1 run setblock 0 -64 0 yellow_shulker_box replace
execute unless score #loaded sys matches 1 run data merge storage ui:config {System:{Loaded:1b,Version:"1.0"}}
execute unless score #loaded sys matches 1 run data merge storage ui:main {initialized:1b}
execute unless score #loaded sys matches 1 run scoreboard players set #next ui.id 1
execute unless score #loaded sys matches 1 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2 1
execute unless score #loaded sys matches 1 run tellraw @a ["",{"text":"[System] ","color":"dark_aqua"},{"text":"İlk kurulum tamamlandı! ✅","color":"green"}]

# 3. KİLİT MEKANİZMASI
# En sonda skoru 1 yapıyoruz ki yukarıdaki 'unless' komutları bir sonraki reload'da çalışmasın.
execute unless score #loaded sys matches 1 run scoreboard players set #loaded sys 1