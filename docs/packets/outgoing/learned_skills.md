---
layout: default
title: LearnedSkills
parent: Outgoing Packets
grand_parent: Packets
nav_order: 13
---

# LearnedSkills (0x0108)

This packet is sent when a player is first loading into the game world, and informs them of all the skills their character has learned, and their cooldowns.

## Payload

| Data type              | Name            | Description                                                                               |
|:-----------------------|:----------------|:------------------------------------------------------------------------------------------|
| u16                    | skillpoints     | The number of unallocated skillpoints available to the player.                            |
| u8                     | quantity        | The number of learned skills.                                                             |
| LearnedSkill[quantity] | skills          | The payload of learned skills.                                                            |

## LearnedSkill (ps0198)

| Data type              | Name            | Description                                                                               |
|:-----------------------|:----------------|:------------------------------------------------------------------------------------------|
| u16                    | skill_id        | The id of the skill.                                                                      |
| u8                     | skill_level     | The level of the skill the player has learned.                                            |
| u8                     | id              | The id of this skill assigned by the server, which will be sent when the skill is used.   |
| u32                    | cooldown        | The remaining cooldown of the skill, in seconds.                                          |