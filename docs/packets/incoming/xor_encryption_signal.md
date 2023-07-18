---
layout: default
title: XorEncryptionSignal
parent: Incoming Packets
grand_parent: Packets
nav_order: 6
---

# XorEncryptionSignal (0xB106)

This packet is sent by the client after receiving the {% pout action_bar_update %} packet, which signals that the client will start using a XOR encryption for packets rather than AES. More information on how this encryption works can be found on the {% pout game_handshake_response %} packet documentation.