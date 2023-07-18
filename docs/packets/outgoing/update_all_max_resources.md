---
layout: default
title: UpdateAllMaxResources
parent: Outgoing Packets
grand_parent: Packets
nav_order: 20
---

# UpdateAllMaxResources (0x051F)

This packet is used to update all of the maximum values of a particular character's resources.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | char_id         | The id of the character being updated.                                                     | 
| u32                  | hitpoints       | The maximum hitpoints of the character.                                                    |
| u32                  | mana            | The maximum mana of the character.                                                         |
| u32                  | stamina         | The maximum stamina of the character.                                                      |