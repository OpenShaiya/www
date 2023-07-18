---
layout: default
title: GuildListLoadBegin
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0D0D
---

# GuildListLoadBegin (0x0D0D)

Informs the client that the server is going to start sending the guild list. After sending this packet, the server will begin sending the {% pout guild_list %} packet in chunks. This packet has no payload.