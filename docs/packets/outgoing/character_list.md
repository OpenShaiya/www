---
layout: default
title: CharacterList
parent: Outgoing Packets
grand_parent: Packets
nav_order: 6
---

# CharacterList (0x0101)

A packet that informs the client of the characters they have available in their character list. This is actually sent as multiple packets - one for each slot in the character list screen. A `char_id` of 0 signals that the slot is empty, and no further data is needed for that slot.

## Payload (ps0198)

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | slot            | The slot on the character list that this entry is for.                                     |
| u32                  | char_id         | The character id. If this is 0, the rest of this payload should be ommitted.               |
| u32                  | creation_time   | The time the character was created - this is never actually needed by the client.          |
| u16                  | level           | The level of the character.                                                                |
| u8                   | race            | The race of the character [0=Human, 1=Elf, 2=Vail, 3=Nordein]                              |
| u8                   | mode            | The game mode of the characte [0=Easy, 1=Normal, 2=Normal/Basic, 3=Ultimate]               |
| u8                   | hair            | The hair style of the character.                                                           |
| u8                   | face            | The face value of the character.                                                           |
| u8                   | height          | The height value of the character.                                                         |
| u8                   | class           | The class of the character [0=Fighter, 1=Defender, 2=Ranger, 3=Archer, 4=Mage, 5=Priest]   |
| u8                   | gender          | The gender of the character [0=Male, 1=Female]                                             |
| u16                  | map             | The map id the character is currently in.                                                  |
| u16                  | strength        | The base strength value of the character.                                                  |
| u16                  | dexterity       | The base dexterity value of the character.                                                 |
| u16                  | reaction        | The base reaction value of the character.                                                  |
| u16                  | intelligence    | The base intelligence value of the character.                                              |
| u16                  | wisdom          | The base wisdom value of the character.                                                    |
| u16                  | luck            | The base luck value of the character.                                                      |
| u16                  | hitpoints       | The current hitpoints of the character.                                                    |
| u16                  | mana            | The current mana of the character.                                                         |
| u16                  | stamina         | The current stamina of the character.                                                      |
| u8[8]                | itemTypes       | The item types of the worn, visible items of the character.                                |
| u8[8]                | itemTypeIds     | The item type ids of the worn, visible items of the character.                             |
| u8[19]               | name            | The name of the character, as a null-terminated string.                                    |
| u8                   | pendingDelete   | If the character is waiting to be deleted.                                                 |
| u8                   | pendingRename   | If the character needs to be renamed.                                                      |
| u8[6]                | cloakEmblems    | The cloak emblem data.                                                                     |