---
layout: default
title: UpdateMaxResources
parent: Outgoing Packets
grand_parent: Packets
nav_order: 17
---

# UpdateMaxResources (0x050B)

This packet is used to update the maximum value of a particular character's resource.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | char_id         | The id of the character being updated.                                                     | 
| u8                   | resource_type   | The type of resource being updated [0=Hitpoints, 1=Mana, 2=Stamina]                        |
| u32                  | value           | The maximum resource value.                                                                |