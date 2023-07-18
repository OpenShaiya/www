---
layout: default
title: CharacterNameAvailableResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0103
---

# CharacterNameAvailableResponse (0x0119)

This packet is sent in response to a {% pinc character_name_available_request %}.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the request (0 = Name is available, 1 = Name is taken).                      |