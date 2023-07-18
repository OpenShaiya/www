---
layout: default
title: ServerSelectResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0xA202
---

# ServerSelectResponse (0xA202)

This is a response to the [ServerSelectRequest]({{ site.baseurl }}{% link docs/packets/outgoing/server_select_response.md %}).

## Payload

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| i8                   | status          | The status of the request, informing the client if it can connect.                    |
| u8[4]                | ipAddr          | The Ipv4 address of the game server, split into octects. (127, 0, 0, 1)               |

## ServerSelectStatus

A status code of 0 indicates a success, and the client will attempt to connect to the game server. For non-zero status codes, the following values are valid:

| Value     | sysmsg-id         | Default text                                                                                    |
|:----------|:------------------|:------------------------------------------------------------------------------------------------|
| -1        | 10075             | please try again later                                                                          |
| -2        | 10074             | cannot connect to server                                                                        |
| -3        | 10073             | client version doesn't match!                                                                   |
| -4        | 10096             | server saturated. Please connect later                                                          |     