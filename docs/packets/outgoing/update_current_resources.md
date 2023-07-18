---
layout: default
title: UpdateCurrentResources
parent: Outgoing Packets
grand_parent: Packets
nav_order: 21
---

# UpdateCurrentResources (0x0521)

This packet is used to update the values of the player's own resources.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | hitpoints       | The current hitpoints of the player.                                                       |
| u32                  | mana            | The current mana of the player.                                                            |
| u32                  | stamina         | The current stamina of the player.                                                         |