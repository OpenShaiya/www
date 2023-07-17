---
layout: default
title: LoginHandshakeResponse
parent: Incoming Packets
grand_parent: Packets
nav_order: 1
---


# LoginHandshakeResponse (0xA101)

After receiving the [LoginHandshakeRequest]({{ site.baseurl }}{% link docs/packets/outgoing/login_handshake_request.md %}), the client will respond with this packet. The payload of this packet will be used to seed the AES encryption.

## Payload

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| u8                   | payloadLen      | The length of the proceeding payload.                                                 |
| i8[payloadLen]       | payload         | The encrypted payload.                                                                |


## Usage

The `payload` of this packet will be encrypted using the public key previously provided by the server. You can decrypt this payload using your private key, like so. The following functions are included in most cryptography and big-integer libraries.
```
d = private_key.exponent    // This is your private exponent, usually referred to as 'd'.
n = private_key.modulus
decrypted = encrypted.modpow(d, n)
```

Once the payload is decrypted, we can seed the encryption. Shaiya uses an AES128-CTR mode encryption for the login server, and the key to seed this must be obtained by performing an SHA256-HMAC on the decrypted payload. Code to use this would look something like:
```
mac = HmacSHA256::new(decrypted)
mac.update(n)

key_base = mac.finalize()
key, iv = key_base.split_at(16)

AES128Ctr::new(key, iv)
```

After this packet is sent by the client, it will begin encrypting and decrypting data using these AES instances. Please note that a separate counter is used for incoming and outgoing packets.