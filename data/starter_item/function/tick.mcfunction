scoreboard players add @a starter_item 0
execute as @a[scores={starter_item=0}] unless data storage starter_item:item {id: "minecraft:air"} unless items entity @s weapon.offhand * run function starter_item:give_item_macro with storage starter_item:item
