---
layout: default
title: GameHandshakeRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 0xA301
---

# GameHandshakeRequest (0xA301)

This packet is sent by the client after they have disconnected from the login server and chosen to connect to a game server from the server list. This serves as a way for the client to identify itself via it's `user_uid` and `identity` fields, and as such allows the game server to retrieve the relevant encryption keys.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | user_uid        | The id of the user account, that was provided to the client by the login server.           | 
| i128                 | identity        | The random identity value assigned to the client.                                          |