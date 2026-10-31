function starter_item:reset_starter_item
data modify storage starter_item:item id set from entity @s SelectedItem.id
data modify storage starter_item:item count set from entity @s SelectedItem.count
data modify storage starter_item:item components set from entity @s SelectedItem.components