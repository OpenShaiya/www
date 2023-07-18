---
layout: default
title: UpdateBillingPoints
parent: Outgoing Packets
grand_parent: Packets
nav_order: 24
---

# UpdateBillingPoints (0x2601)

Updates the number of points the player has available to spend, in the in-game item mall.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | points          | The number of available points in the item mall.                                           |
| u8                   | unknown         | More testing needed - most likely the number of gifted items.                              |