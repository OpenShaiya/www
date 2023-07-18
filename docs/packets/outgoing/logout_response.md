---
layout: default
title: LogoutResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 12
---


# LogoutResponse (0x0107)

This is sent after a 10 second timer has elapsed, following receiving a {% pinc logout_request %}. Sending this packet will trigger the client to go back to the character selection screen, and reverts back to AES encryption. This packet has no payload.