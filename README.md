# Starter Item Datapack

A small Minecraft Java Edition datapack that gives each player a starter item the first time they join the world.

## Overview

This datapack stores the currently selected item from the player's hotbar, saves it in a datapack-managed storage, and then automatically gives that item to the player whenever they join for the first time. It is useful for custom survival setups, challenge worlds, or server templates where every player should begin with the same item.

## Features

- Tracks whether a player has already received the starter item
- Saves the selected item data including:
  - item id
  - count
  - components
- Gives the starter item to the offhand slot on first join
- Includes reset functions for individual players or all players
- Runs on datapack load and tick automatically

## Installation

1. Place this folder in your world's datapacks directory.
2. Start or reload the world.
3. Run the following command once while holding the item you want to save as the starter item:

```mcfunction
function starter_item:set_item
```

4. On the next join, the selected item will be automatically granted to the player in the offhand slot.

## Datapack structure

```text
minecraft-datapack-setup/
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
│           ├── set_item.mcfunction
│           ├── give_item.mcfunction
│           ├── remove_item.mcfunction
│           ├── reset_player_data.mcfunction
│           └── reset_all_players_data.mcfunction
└── README.md
```

## Important functions

### `starter_item:set_item`
Saves the item currently selected by the player into datapack storage.

### `starter_item:give_item`
Applies the stored item to the player if they have not already received it.

### `starter_item:remove_item`
Removes the stored item data from the datapack storage.

### `starter_item:reset_player_data`
Resets the player's starter-item state so they can receive the item again on the next join.

### `starter_item:reset_all_players_data`
Resets the scoreboard for all players. Use this when reconfiguring the datapack or testing it repeatedly.

## Notes

- The starter item is placed into the player's offhand slot.
- The datapack uses a `starter_item` scoreboard objective to track each player's state.
- The pack metadata currently declares the datapack format used by this setup (`pack_format` 121) and the description text: `Item Starter | Minecraft version: 26.3`.

## Quick usage example

```mcfunction
# Save the currently selected item as the starter item
function starter_item:set_item

# Reset one player
execute as <player> run function starter_item:reset_player_data

# Reset everyone
function starter_item:reset_all_players_data
```

## License

This project is provided as-is for personal or custom world setup use.
