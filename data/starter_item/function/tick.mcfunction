# Runs once every game tick.
scoreboard players add @a starter_item 0
execute as @a[scores={starter_item=0}] if data storage starter_item:item id unless items entity @s weapon.offhand * run function starter_item:give_item with storage starter_item:item
