# Starter Item Datapack

A Minecraft Java Edition datapack that remembers a chosen item and gives it to players when they first join the world.

## Overview

This datapack stores the item currently selected in the player's hand, saves its `id`, `count`, and `components`, and then grants it to the player's offhand on the first join if they have not received the starter item yet.

It is useful for custom survival worlds, challenge setups, or template servers where all players should begin with the same item.

## Features

- Saves the selected item in a datapack storage
- Tracks whether a player has already received the starter item via the `starter_item` scoreboard
- Gives the item to the offhand on first join
- Includes commands to reset a single player or all players
- Runs automatically on datapack load and tick

## Installation

1. Place the datapack folder in your world's `datapacks` directory.
2. Reload the datapack or restart the world.
3. While holding the item you want to save, run:

```mcfunction
function starter_item:set_starter_item
```

4. The next time a player joins, the saved item is automatically placed in their offhand if they have not already received it.

## Datapack structure

```text
mc-datapack-starter-item/
├── pack.mcmeta
├── data/
│   ├── minecraft/
│   │   └── tags/
│   │       └── function/
│   │           ├── load.json
│   │           └── tick.json
│   └── starter_item/
│       └── function/
│           ├── load.mcfunction
│           ├── tick.mcfunction
│           ├── set_starter_item.mcfunction
│           ├── reset_starter_item.mcfunction
│           ├── give_item_macro.mcfunction
│           ├── reset_player_data.mcfunction
│           └── reset_all_players_data.mcfunction
└── README.md
```

## Important functions

### `starter_item:set_starter_item`
Saves the currently selected item into the datapack storage.

### `starter_item:reset_starter_item`
Clears the stored item data and resets the saved starter item value to `minecraft:air`.

### `starter_item:give_item_macro`
Applies the stored item to the player, placing it in the offhand and restoring its components.

### `starter_item:reset_player_data`
Resets the target player's starter-item state so they can receive the item again on a future join.

### `starter_item:reset_all_players_data`
Removes the scoreboard objective and recreates it so the whole datapack state can be reset.

## Notes

- The item is always placed into the offhand slot.
- The datapack stores the starter item under `storage starter_item:item`.
- The datapack is configured for Minecraft pack format `121` in `pack.mcmeta`.
- The objective used to track join state is named `starter_item`.

## Quick usage examples

```mcfunction
# Save the item currently selected by the player
function starter_item:set_starter_item

# Clear the saved starter item
function starter_item:reset_starter_item

# Reset a single player
execute as <player> run function starter_item:reset_player_data

# Reset everyone
function starter_item:reset_all_players_data
```

## License

This project is provided as-is for personal or custom world setup use.
