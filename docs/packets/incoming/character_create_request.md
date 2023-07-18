---
layout: default
title: CharacterCreateRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 0x0102
---

# CharacterCreateRequest (0x0102)

This packet is sent by the client when they are attempting to create a character, while in the character selection screen. The server will then respond with {% pout character_create_response %}, signalling if an error occured.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | slot            | The slot this character should go in.                                                      |
| u8                   | race            | The character race [0=Human, 1=Elf, 2=Vail, 3=Nordein]                                     |
| u8                   | mode            | The character game mode [0=Easy, 1=Normal, 2=Hard/Basic, 3=Ultimate]                       |
| u8                   | hair            | The hair style of the character.                                                           |
| u8                   | face            | The face value of the character.                                                           |
| u8                   | height          | The height value of the character.                                                         |
| u8                   | class           | The class of the character [0=Fighter, 1=Defender, 2=Ranger, 3=Archer, 4=Mage, 5=Priest]   |
| u8                   | gender          | The gender of the character.                                                               |
| u8[19]               | name            | The name of the character, as a null-terminated string.                                    |