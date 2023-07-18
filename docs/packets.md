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

## Documented Packets

Below is a list of packets that are currently documented on this site.

| Opcode    | Incoming                                      | Outgoing                                                                 |
------------|:----------------------------------------------|:-------------------------------------------------------------------------|
| 0xA101    | {% pinc login_handshake_response %}           | {% pout login_handshake_request %}                                       |
| 0xA102    | {% pinc login_request %}                      | {% pout login_response %}                                                |
| 0xA201    | n/a                                           | {% pout server_list %}                                                   |
| 0xA202    | {% pinc server_select_request %}              | {% pout server_select_response %}                                        |
| 0xA301    | {% pinc game_handshake_request %}             | {% pout game_handshake_response %}                                       |
| 0x0101    | n/a                                           | {% pout character_list %}                                                |
| 0x0109    | {% pinc account_faction_select %}             | {% pout account_faction %}                                               |
| 0xB106    | {% pinc xor_encryption_signal %}              | n/a                                                                      |