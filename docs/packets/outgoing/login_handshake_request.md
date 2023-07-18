---
layout: default
title: LoginHandshakeRequest
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0xA101
---


# LoginHandshakeRequest (0xA101)

This is the first packet sent by either party, and is sent when the client first connects to the login server. This packet is responsible for providing an RSA public key to the client, which will later be used to encrypt an AES payload.

## Payload

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| u8                   | encryptionMode  | The encryption mode to use. This is not used in the protocol, and is always set to 0. |
| u8                   | exponentLen     | The length (in bytes) of the RSA public exponent.                                     |
| u8                   | modulusLen      | The length (in bytes) of the RSA modulus.                                             |
| i8[64]               | exponent        | The public exponent bytes, in little-endian order. This must always be padded to fill the 64 bytes requirement. |
| i8[128]              | modulus         | The modulus bytes, in little-endian order.                                            |