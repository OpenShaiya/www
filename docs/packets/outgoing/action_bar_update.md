---
layout: default
title: ActionBarUpdate
parent: Outgoing Packets
grand_parent: Packets
nav_order: 15
---

# ActionBarUpdate (0x010B)

This value is sent by the server when the player has finished loading into the game with a character, and informs them of their saved action bar values. This also triggers the client to send the {% pinc xor_encryption_signal %}, at which time the client will begin using the `expandedKeySeed` and switch to a primitive XOR-based encryption.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | qty             | The number of entries in this update.                                                      |
| ActionBarItem[qty]   | items           | The payload of the action bar items.                                                       |


## ActionBarItem

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | barIndex        | The index of the action bar.                                                               |
| u8                   | barSlot         | The slot on the action bar.                                                                |
| u8                   | itemType        | The type of the action bar item. <br>0-5 = Inventory item<br>100 = Skill<br>100+ = Emote   |
| u16                  | value           | The value of the slot. If an inventory item, this is the slot (where type is the bag). If a skill, this is the skill id. |
