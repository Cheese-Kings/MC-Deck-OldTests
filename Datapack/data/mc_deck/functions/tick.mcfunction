# Detect if player is holding a card
execute at @a[scores={click_carrot=1..},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{IsMcDeckCard:1}}]}] run function mc_deck:detect_card