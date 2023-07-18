---
layout: default
title: ItemAcquired
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0205
---

# ItemAcquired (0x0205)

This packet is used to inform a player that an item has been added to their inventory. This also logs the "acquired {name}" text to the chat box, and plays a sound effect.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | bag             | The bag the item was added to (0-5).                                                       |
| u8                   | slot            | The slot the item was added to.                                                            |
| u8                   | type            | The item type.                                                                             |
| u8                   | type_id         | The item type id.                                                                          |
| u8                   | quantity        | The quantity of items in this stack.                                                       |
| u16                  | durability      | The current durability of the item.                                                        |
| u8[6]                | lapis           | The lapis gem type ids. These all have a "type" of 30.                                     |
| u8[21]               | craftname       | The craftname of an item.                                                                  |

## Craftname

The craftname of an item is an ASCII string representing the "orange" stats on the item, and it's enchantment level. All values in this string should be padded to two characters, with a leading 0 if the value is under 10. A craftname can be constructed in Python like so:
```python
def create_craftname(str, dex, rec, int, wis, luc, hp, mp, sp, enchant):
    f"{str:02d}{dex:02d}{rec:02d}{int:02d}{wis:02d}{luc:02d}{hp:02d}{mp:02d}{sp:02d}{enchant:02d}"
end
```