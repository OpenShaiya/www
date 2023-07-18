---
layout: default
title: GuildList
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0D2F
---

# GuildList (0x0D2F)

Updates the client with a list of available guilds at the guild master. Please note that these `GuildUnit` entries are quite large due to containing text, and thus should be chunked appropriately to avoid exceeding the maximum packet length of 2048 bytes.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | quantity        | The number of guild entries.                                                               |
| GuildEntry[quantity] | entries         | The guild entries.                                                                         |

## GuildEntry (ps0198)

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u32                  | id              | The unique id of the guild.                                                                |
| u8[25]               | name            | The name of the guild.                                                                     |
| u8[19]               | leader_name     | The character name of the guild leader.                                                    |
| u8[60]               | message         | The guild message.                                                                         |
| u8                   | rank            | The rank of the guild.                                                                     |
| u32                  | points          | The number of points the guild last gained in GRB.                                         |