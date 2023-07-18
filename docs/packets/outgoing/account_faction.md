---
layout: default
title: AccountFaction
parent: Outgoing Packets
grand_parent: Packets
nav_order: 13
---

# AccountFaction (0x0109)

This packet is sent after the client has successfully handshaked with the game server - it informs the player of their current faction, as well as maximum available game mode.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | faction         | The faction id of the account.                                                             | 
| u8                   | maxGameMode     | The maximum game mode the account can create.                                              |


## Faction IDs

| Value                | Description                                                                        |
|:---------------------|:-----------------------------------------------------------------------------------|
| 0                    | Alliance of Light                                                                  |
| 1                    | Union of Fury                                                                      |
| 2                    | Faction not yet chosen                                                             |


## Game Mode IDs

| Value                | Description                                                                        |
|:---------------------|:-----------------------------------------------------------------------------------|
| 0                    | Easy                                                                               |
| 1                    | Normal                                                                             |
| 2                    | Hard ("Basic" in later episodes)                                                   |
| 3                    | Ultimate                                                                           |