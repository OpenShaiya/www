---
layout: default
title: ItemRerollRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 0x0806
---

# ItemRerollRequest (0x0806)

This packet is sent by the client when they attempt to reroll an item at the blacksmith. The server will then respond with {% pout item_reroll_response %}.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | rune_bag        | The bag containing the recreation rune.                                                    |
| u8                   | rune_slot       | The slot containing the recreation rune.                                                   |
| u8                   | item_bag        | The bag containing the item to be rerolled.                                                |
| u8                   | item_slot       | The slot containing the item to be rerolled.                                               |