---
layout: default
title: ItemRerollResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0806
---

# ItemRerollResponse (0x0806)

This packet is sent in response to a {% pinc item_reroll_request %}. 

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the request (0 = Success, 1 = Failed)                                        |
| u8                   | bag             | The bag containing the item being updated.                                                 |
| u8                   | slot            | The slot containing the item being updated.                                                |
| u8[21]               | craftname       | The new craftname of the item.                                                             |

## Craftname

The craftname of an item is an ASCII string representing the "orange" stats on the item, and it's enchantment level. All values in this string should be padded to two characters, with a leading 0 if the value is under 10. A craftname can be constructed in Python like so:
```python
def create_craftname(str, dex, rec, int, wis, luc, hp, mp, sp, enchant):
    f"{str:02d}{dex:02d}{rec:02d}{int:02d}{wis:02d}{luc:02d}{hp:02d}{mp:02d}{sp:02d}{enchant:02d}"
end
```