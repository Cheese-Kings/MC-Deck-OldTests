# Recieve Daily Gift
execute store result score time Debug run time query daytime
execute if score time Debug matches 1000 run function mc_deck:daily_gift

# Convert Daily Gift to Rubys
scoreboard players add @a daily_rubies 0
execute as @a if score @s daily_rubies matches 1.. run function debug:give_item/ruby
execute as @a if score @s daily_rubies matches 1.. run scoreboard players remove @s daily_rubies 1

# Day Counter [Currently Useless]
execute store result score day_count Debug run time query day

# Display Synergy
bossbar set synergy players @a
execute as @a[tag=!inBattle] run bossbar set synergy visible false
execute as @a[tag=inBattle] run bossbar set synergy visible true
scoreboard players add @a player_synergy 0

# Display Card Health
bossbar set card_health players @a
execute as @a[tag=!inBattle] run bossbar set card_health visible false
execute as @a[tag=inBattle] run bossbar set card_health visible true
scoreboard players add @a player_synergy 0

# Recieve daily quote
execute if score time Debug matches 1001 run function mc_deck:daily_quote