---
layout: default
title: InventoryPopulate
parent: Outgoing Packets
grand_parent: Packets
nav_order: 11
---

# InventoryPopulate (0x0106)

This packet is sent by the server when the player first loads into the game world, as a way to quickly populate the inventory during the load screen. Please note that this should be chunked appropriately in higher episodes where the size of an `ItemUnit` exceeds 17 bytes, as this will otherwise overflow the maximum length of a packet (2048 bytes).

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | quantity        | The number of entries in this packet.                                                      |
| ItemUnit[quantity]   | items           | The items being added to the inventory.                                                    |

## ItemUnit (ps0032)

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | bag             | The bag that the item resides in.                                                          |
| u8                   | slot            | The slot to place the item in.                                                             |
| u8                   | type            | The item type.                                                                             |
| u8                   | type_id         | The item type id.                                                                          |
| u16                  | durability      | The current durability of the item.                                                        |
| u8[6]                | lapis           | The lapis gem type ids. These all have a "type" of 30.                                     |
| u8                   | quantity        | The quantity of items in this stack.                                                       |