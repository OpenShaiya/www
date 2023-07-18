---
layout: default
title: UpdateKills
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0522
---

# UpdateKills (0x0522)

This packet is used to update the number of kills of a player.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | char_id         | The id of the character being updated.                                                     | 
| u32                  | kills           | The number of kills the character has.                                                     |