---
layout: default
title: CharacterDetails
parent: Outgoing Packets
grand_parent: Packets
nav_order: 10
---

# CharacterDetails (0x0105)

The server sends this packet after sending a successful {% pout character_select_response %}. This is the packet that triggers the client to begin actually loading into the game world.

## Payload (ps0198)

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u16                  | statpoints      | The number of unallocated statpoints available.                                            |
| u16                  | skillpoints     | The number of unallocated skillpoints available.                                           |
| u32                  | max_hitpoints   | The maximum amount of hitpoints.                                                           |
| u32                  | max_mana        | The maximum amount of mana.                                                                |
| u32                  | max_stamina     | The maximum amount of stamina.                                                             |
| u16                  | direction       | The direction the character is facing in radians, used as `-direction * (180/PI)`          |
| u32                  | prev_exp        | The amount of experience required to reach the player's current level.                     |
| u32                  | next_exp        | The amount of experience required to reach the next level.                                 |
| u32                  | current_exp     | The current experience the player has.                                                     |
| u32                  | gold            | The amount of gold in the player's inventory.                                              |
| f32                  | x               | The x coordinate of the player.                                                            |
| f32                  | y               | The y coordinate of the player.                                                            |
| f32                  | z               | The z coordinate of the player.                                                            |
| u32                  | kills           | The number of kills the player has.                                                        |
| u32                  | deaths          | The number of deaths the player has.                                                       |
| u32                  | victories       | The number of duel victories the player has.                                               |
| u32                  | defeats         | The number of duel defeats the player has.                                                 |
| u8[25]               | guild_name      | The name of the guild the player is in.                                                    |