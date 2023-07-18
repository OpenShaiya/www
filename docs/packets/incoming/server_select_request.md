---
layout: default
title: ServerSelectRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 0xA202
---


# ServerSelectRequest (0xA202)

This is sent when a client chooses to connect to an entry on the server list.

## Payload

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| u8                   | id              | The id of the server that the client wishes to connect to.                            |
| u32                  | version         | The version of the game client being used.                                            |