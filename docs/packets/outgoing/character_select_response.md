---
layout: default
title: CharacterSelectResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 9
---

# CharacterSelectResponse (0x0104)

The server sends this packet in response to a {% pinc character_select_request %}. It tells the client if they are able to enter the game world their selected character. If this is a successful response, the server will also send the {% pout character_details %} packet, which will trigger the client to begin loading into the map.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the request [0=Success, 1=Error]                                             |
| u32                  | char_id         | The id of the character the client should connect with.                                    |