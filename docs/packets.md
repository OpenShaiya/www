---
layout: default
title: Packets
nav_order: 2
has_children: true
permalinks: packets
---

# Shaiya Packets

Packets are units of data used to communicate between the client and the server. They transmit information from the server, as well as input from the player to the server. In this document, incoming packets refer to the packets that the client sends to the server, while outgoing packets refer to the ones the server sends to players.

A packet is always prefixed with 2 shorts - the length, and the opcode. These should both be in little endian order. When using encryption, the packet should be encrypted from the opcode onwards, leaving the length unencrypted. Thus, a packet should follow the convention:

| Data type            | Name                 | Description                                        |
|:---------------------|:---------------------|:---------------------------------------------------|
| u16                  | length               | The length of the entire message.                  |
| u16                  | opcode               | The identifier of the packet.                      |
| byte[length - 4]     | payload              | The data of the packet                             |