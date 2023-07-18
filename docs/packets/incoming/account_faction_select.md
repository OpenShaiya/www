---
layout: default
title: AccountFactionSelect
parent: Incoming Packets
grand_parent: Packets
nav_order: 0x0109
---

# AccountFactionSelect (0x0109)

This packet is sent by the client when they are requested to select a faction. This usually happens when the account is first created and has not yet been assigned a faction, or if the account has deleted all of it's characters and wishes to choose a different faction.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | faction         | The faction id selected by the client.                                                     | 


## Faction IDs

| Value                | Description                                                                        |
|:---------------------|:-----------------------------------------------------------------------------------|
| 0                    | Alliance of Light                                                                  |
| 1                    | Union of Fury                                                                      |
| 2                    | Faction not yet chosen                                                             |