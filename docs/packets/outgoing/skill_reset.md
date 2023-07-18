---
layout: default
title: SkillReset
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0x0215
---

# SkillReset (0x0215)

This packet is sent by the server to signify that the character's skills have been reset, after using a Skill Reset Stone.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the skill reset (0 = Success, 1 = Fail)                                      |
| u16                  | skillpoints     | The number of available skillpoints.                                                       |