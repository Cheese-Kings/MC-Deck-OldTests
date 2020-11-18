# Setup Card Data Objectives
scoreboard objectives add cardAttack dummy
scoreboard objectives add cardHealth dummy
scoreboard objectives add cardID dummy

# Setup Debug Scoreboard
scoreboard objectives add Debug dummy
scoreboard players add first_time_load_completed Debug 0
scoreboard players add time Debug 0
scoreboard players add day_count Debug 0
# Current Version
scoreboard players add current_version_major Debug 0
scoreboard players add current_version_minor Debug 0
# Set Datapack Version
scoreboard players set current_version_major Debug 0
scoreboard players set current_version_minor Debug 1

# Setup Click Carrot Scoreboard [Currently Not Required, Saving For Later Feature]
scoreboard objectives add click_carrot minecraft.used:minecraft.carrot_on_a_stick

# Setup Daily Rubies Scoreboard
scoreboard objectives add daily_rubies dummy

# Install Card Stats
function #mc_deck:install_card_stats

# Setup Synergy Bossbar/Scoreboard
bossbar add souls ["",{"text":"-[=@=/","color":"yellow"},{"text":" SYNERGY","color":"light_purple"},{"text":" \\=@=]-","color":"yellow"}]
bossbar set souls color blue
bossbar set souls max 150
bossbar set souls style progress
scoreboard objectives add player_souls dummy


# Setup Card Health Bossbar/Scoreboard
bossbar add card_health ["",{"text":"-[=@=/","color":"yellow"},{"text":" CARD HEALTH","color":"red"},{"text":" \\=@=]-","color":"yellow"}]
bossbar set card_health color red
bossbar set card_health max 150
bossbar set card_health style progress
scoreboard objectives add player_card_hp dummy

# Run card detection
execute if score first_time_load_completed Debug matches 0 run schedule function #mc_deck:detect_card 5t

# Installation Completion
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" MC Deck","color":"gold"},{"text":" datapack is loaded!","color":"aqua"}]
execute if score first_time_load_completed Debug matches 0 run tellraw @a [{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" First time load completed!","color":"green"}]
# Mark first time load as completed
execute if score first_time_load_completed Debug matches 0 run scoreboard players set first_time_load_completed Debug 1