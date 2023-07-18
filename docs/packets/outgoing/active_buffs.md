---
layout: default
title: ActiveBuffs
parent: Outgoing Packets
grand_parent: Packets
nav_order: 15
---

# ActiveBuffs (0x010A)

This packet is sent when a player is first loading into the game world, and informs them of all the buffs they currently have active.

## Payload

| Data type              | Name            | Description                                                                               |
|:-----------------------|:----------------|:------------------------------------------------------------------------------------------|
| u8                     | quantity        | The number of active buffs.                                                               |
| Buff[quantity]         | buffs           | The payload of buffs.                                                                     |

## Buff (ps0198)

| Data type              | Name            | Description                                                                               |
|:-----------------------|:----------------|:------------------------------------------------------------------------------------------|
| u32                    | unique_id       | A unique id assigned to this buff.                                                        |
| u16                    | skill_id        | The id of the skill.                                                                      |
| u8                     | skill_level     | The level of the skill.                                                                   |
| u32                    | duration        | The remaining duration of this buff, in seconds.                                          |