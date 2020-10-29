
#forceloaded chunk
execute if score $base.timer_20 du_data matches 0 unless entity @e[tag=du_forced_chunk,distance=0..] run function du:base/init_chunk

#actions
tag @s remove du_jumping
tag @s[scores={du_jump=1..}] add du_jumping
scoreboard players set @s du_jump 0

#moving
execute if score $base.timer_2 du_data matches 0 run function du:player/get_moving

#click detect
function du:player/clickdetect/clickdetect

#custom durability
execute if data entity @s Inventory[].tag.du_dur.enabled run function du:player/durability/handle_durability

#Assign Player IDs
execute if score $base.timer_20 du_data matches 0 run function du:player/uuid/get_uuid

#ui clear
execute if entity @s[nbt={Inventory:[{tag:{du_gui:1b}}]}] run clear @s #du:ui-items{du_gui:1b}

#reset scores
scoreboard players set @s du_talked 0
tag @s remove du_hit_entity
