# Recieve Daily Gift
execute store result score time Debug run time query daytime
execute if score time Debug matches 1200 run function mc_deck:daily_gift

# Convert Daily Gift to Rubys
scoreboard players add @a daily_rubies 0
execute as @a store result score @s daily_rubies run clear @s minecraft:barrier{CustomModelData:21,item_ruby_dailyState:1} 1
execute as @a if score @s daily_rubies matches 1.. run function debug:give_item/ruby
execute as @a if score @s daily_rubies matches 1.. run scoreboard players remove @s daily_rubies 1