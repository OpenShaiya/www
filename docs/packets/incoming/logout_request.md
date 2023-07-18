---
layout: default
title: LogoutRequest
parent: Incoming Packets
grand_parent: Packets
nav_order: 8
---

# LogoutRequest (0x0107)

This packet is sent by the client when they click "return to character screen". After this, the server should start a 10 second timer and respond with {% pout logout_response %} when it has elapsed. This packet does not have a payload.