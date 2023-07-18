---
layout: default
title: CharacterDeleteRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 0x0103
---

# CharacterDeleteRequest (0x0103)

This packet is sent by the client when they are attempting to delete a character while at the character screen. The server will then respond with {% pout character_delete_response %} - indicating if the character will be pending a deletion, or if an error occurred.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | char_id         | The id of the character the client wants to delete.                                        |