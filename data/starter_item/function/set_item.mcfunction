# This function is used to set the item that will be given to players when they join the game for the first time.
data modify storage starter_item:item id set from entity @s SelectedItem.id
data modify storage starter_item:item count set from entity @s SelectedItem.count
data modify storage starter_item:item components set from entity @s SelectedItem.components