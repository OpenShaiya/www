---
layout: default
title: ServerTime
parent: Outgoing Packets
grand_parent: Packets
nav_order: 18
---

# ServerTime (0x0404)

This packet is used to populate the date and time of the clock under the minimap. If this packet isn't sent, the client will use the client's own local time.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | time            | The current date and time.                                                                 |


## Time

The time in Shaiya is encoded as an integer, using the following formula:
```
time = seconds + ((minutes + ((hours + 32 * (day + 32 * ((month + 1) + 16 * ((year + 1900) - 16)))) << 6)) << 6);
```