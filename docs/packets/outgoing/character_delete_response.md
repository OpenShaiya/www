---
layout: default
title: CharacterDeleteResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0103
---

# CharacterDeleteResponse (0x0103)

The server sends this packet in response to a {% pinc character_delete_request %}. It tells the client if the character deletion was successful, or if an error occurred. If the deletion request was a success, the character will be deleted after 2 hours.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the request [0=Success, 1=Error]                                             |
| u32                  | char_id         | The id of the character that is now pending deletion.                                      |