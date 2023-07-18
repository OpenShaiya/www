---
layout: default
title: CharacterCreateResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 7
---

# CharacterCreateResponse (0x0102)

The server sends this packet in response to a {% pinc character_create_request %}. It tells the client if the character creation was successful, or if an error occured. If the request is a success, the server should also send a {% pinc character_list %} update with this character's slot, for it to appear on the character list.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the request [0=Success, 1=NameNotAvailable, 2=Error]                         |