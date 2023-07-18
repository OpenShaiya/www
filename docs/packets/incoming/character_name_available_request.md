---
layout: default
title: CharacterNameAvailableRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 0x0103
---

# CharacterNameAvailableRequest (0x0119)

This packet is sent by higher episode clients that have a separate "check name availability" button, and must be sent before creating the character. The server will then respond with a {% pout character_name_available_response %} packet.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8[19]               | name            | The character name to check.                                                               |