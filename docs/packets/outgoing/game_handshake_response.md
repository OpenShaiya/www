---
layout: default
title: GameHandshakeResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 0xA301
---

# GameHandshakeResponse (0xA301)

This packet is sent after the client has successfully handshaked with the game server - it informs the player of their current faction, as well as maximum available game mode.

## Payload

| Data type            | Name            | Description                                                                                |
|:---------------------|:----------------|:-------------------------------------------------------------------------------------------|
| u8                   | status          | The status of the handshake. A value of 0 indicates a success.                             | 
| u8                   | encryptionMode  | More research needed - the Ep4 PDB always specifies a value of 2.                          |
| u8[16]               | expandedKeySeed | The seed to use for the XOR encryption used later in the game.                             |


## XOR Encryption

Upon handshaking with the client, the game server provdes an `expandedKeySeed`. This isn't used straight away, but is instead used upon receiving the {% pinc xor_encryption_signal %} packet. The key is then used like so:

```
digest = SHA256(initial_aes_key)
expandedKey = expandedKeySeed.append(digest)

for (i = 1; i < 128; i++)
    // create a hash of the last 16 bytes of the expanded key
    len = expandedKey.length
    hash = SHA256(expandedKey[len - 16..len])
    expandedKey.append(hash)

for (i = 0; i < packet.length; i++)
    packet[i] ^= expandedKey[i]
```