---
layout: default
title: CharacterSelectRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 7
---

# CharacterSelectRequest (0x0104)

This packet is sent by the client when they are attempting to connect to the game world with specified character in their character list. The server will respond with {% pout character_select_response %}. 

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | char_id         | The id of the character the client wants to connect with.                                  |