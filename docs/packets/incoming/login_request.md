---
layout: default
title: LoginRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 0xA102
---


# LoginRequest (0xA102)

This is sent when a player tries to log-in with a set of credentials.

## Payload

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| u8[32]               | username        | The name of the user.                                                                 |
| u8[19]               | password        | The user's password.                                                                  |