---
layout: default
title: ServerList
parent: Outgoing Packets
grand_parent: Packets
nav_order: 3
---


# ServerList (0xA201)

After sending a successful [LoginResponse]({{ site.baseurl }}{% link docs/packets/outgoing/login_response.md %}), the server will send this packet to populate the server list interface.

## Payload

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| u8                   | qty             | The number of entries in the server list.                                             |
| ServerEntry[qty]     | entries         | The array of server entries.                                                          |

## ServerEntry

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| u8                   | id              | The server id.                                                                        |
| u8                   | status          | The status of the server (Normal, Locked, Closed).                                    |
| u16                  | playerCount     | The number of players currently connected to this server.                             |
| u16                  | playerCapacity  | The maximum number of players that can be connected to this server at one time.       |
| char[32]             | name            | The name of the server, as a null-terminated string.                                  |

## Server Status

The following "status" values are valid for a server entry:

| Value                | State                |
|:---------------------|:---------------------|
| 0                    | Normal               |
| 1                    | Locked               |
| 2                    | Closed               |