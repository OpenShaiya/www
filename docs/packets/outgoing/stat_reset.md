---
layout: default
title: StatReset
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0214
---

# StatReset (0x0214)

This packet is sent by the server to signify that the character's stats have been reset, after using a Stat Reset Stone.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the stat reset (0 = Success, 1 = Fail)                                       |
| u16                  | statpoints      | The number of available statpoints.                                                        |
| u16                  | strength        | The base strength value.                                                                   |
| u16                  | dexterity       | The base dexterity value.                                                                  |
| u16                  | reaction        | The base reaction value.                                                                   |
| u16                  | intelligence    | The base intelligence value.                                                               |
| u16                  | wisdom          | The base wisdom value.                                                                     |
| u16                  | luck            | The base luck value.                                                                       |