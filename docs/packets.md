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
| 0x0102    | {% pinc character_create_request %}           | {% pout character_create_response %}                                     |
| 0x0103    | {% pinc character_delete_request %}           | {% pout character_delete_response %}                                     |
| 0x0104    | {% pinc character_select_request %}           | {% pout character_select_response %}                                     |
| 0x0105    | n/a                                           | {% pout character_details %}                                             |
| 0x0106    | n/a                                           | {% pout inventory_populate %}                                            |
| 0x0107    | {% pinc logout_request %}                     | {% pout logout_response %}                                               |
| 0x0108    | n/a                                           | {% pout learned_skills %}                                                |
| 0x0109    | {% pinc account_faction_select %}             | {% pout account_faction %}                                               |
| 0x010A    | n/a                                           | {% pout active_buffs %}                                                  |
| 0x010B    | n/a                                           | {% pout action_bar_update %}                                             |
| 0x0119    | {% pinc character_name_available_request %}   | {% pout character_name_available_response %}                             |
| 0x0205    | n/a                                           | {% pout item_acquired %}                                                 |
| 0x0214    | n/a                                           | {% pout stat_reset %}                                                    |
| 0x0215    | n/a                                           | {% pout skill_reset %}                                                   |
| 0x0404    | n/a                                           | {% pout server_time %}                                                   |
| 0x050B    | n/a                                           | {% pout update_max_resources %}                                          |
| 0x051C    | n/a                                           | {% pout speed_update %}                                                  |
| 0x051F    | n/a                                           | {% pout update_all_max_resources %}                                      |
| 0x0521    | n/a                                           | {% pout update_current_resources %}                                      |
| 0x0522    | n/a                                           | {% pout update_kills %}                                                  |
| 0x0806    | {% pinc item_reroll_request %}                | {% pout item_reroll_response %}                                          |
| 0x0D0D    | n/a                                           | {% pout guild_list_load_begin %}                                         |
| 0x0D0E    | n/a                                           | {% pout guild_list_load_end %}                                           |
| 0x0D2F    | n/a                                           | {% pout guild_list %}                                                    |
| 0x2601    | n/a                                           | {% pout update_billing_points %}                                         |
| 0xB106    | {% pinc xor_encryption_signal %}              | n/a                                                                      |

## Packet Grouping

As you might have noticed, packets are grouped based on their most significant byte. This allows for the server to logically separate packets based on their opcode alone. An example of this would be, if the client sends a character screen packet while in the game world, we can just ignore it, or disconnect the client.

```
packet_group = opcode & 0xFF00
is_character_screen_packet = packet_group == 0x0100
```