---
layout: default
title: SpeedUpdate
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x051C
---

# SpeedUpdate (0x051C)

This packet is used to inform the client of an update to a player's attack and movement speed.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | char_id         | The id of the character being updated.                                                     |
| u8                   | attack_speed    | The attack speed of the character.                                                         |
| u8                   | move_speed      | The movement speed of the character.                                                       |

## Attack Speed

| Value                | Description                                                       |
|:---------------------|:------------------------------------------------------------------|
| 0                    | None (no weapon equipped)                                         |
| 1                    | Extremely slow                                                    |
| 2                    | Very slow                                                         |
| 3                    | Slow                                                              |
| 4                    | A bit slow                                                        |
| 5                    | Normal                                                            |
| 6                    | A bit fast                                                        |
| 7                    | Fast                                                              |
| 8                    | Very fast                                                         |
| 9                    | Extremely fast                                                    |
| 255                  | Cannot attack                                                     |

## Movement Speed

| Value                | Description                                                       |
|:---------------------|:------------------------------------------------------------------|
| 0                    | Very slow                                                         |
| 1                    | Slow                                                              |
| 2                    | Normal                                                            |
| 3                    | Fast                                                              |
| 4                    | Very fast                                                         |
| 5                    | Cannot move                                                       |