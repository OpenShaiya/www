---
layout: default
title: LoginResponse
parent: Outgoing Packets
grand_parent: Packets
nav_order: 2
---


# LoginResponse (0xA102)

This is sent after the server has received a [LoginRequest]({{ site.baseurl }}{% link docs/packets/incoming/login_request.md %}).

## Payload

| Data type            | Name            | Description                                                                           |
|:---------------------|:----------------|:--------------------------------------------------------------------------------------|
| byte                 | status          | The status of the login process.                                                      |
| u32                  | user_uid        | The id of the user account.                                                           |
| u8                   | privilege       | The privilege or "GM status" of the user.                                             |
| i128                 | identity        | The identity key of the session. This can be anything, but should be random and unique - the client will use this to identify itself when connecting to a game server. 

## Login Status

A `status` of 0 indicates a successful login, and the client will attempt to read the `user_uid`, `privilege`, and `identity` fields. For any non-zero status, they can be omitted. For the ps0198 client, the following status values are valid:

| status   | sysmsg-id     | Default text                                                                     |
|:---------|:--------------|:---------------------------------------------------------------------------------|
| 1        | 10022         | account doesn't exist                                                            |
| 2        | 10023         | can't connect with the account since it's not selected as free challenger.       |
| 3        | 10024         | invalid ID and password                                                          |
| 4        | 10025         | cannot login to the game with this account                                       |
| 5        | 10026         | cannot login to the game and homepage with this account                          |
| 6,7,8    | 10027         | ID in process of termination following user's request.                           |
| 9        | 10028         | can't connect to game following user's request.                                  |
| 10       | 10122         | Your account is blocked now. You can't log into the game.                        |
| 11,12    | 10029         | account still restricted.                                                        |
| 13       | 10105         | (not used)                                                                       |
| 14       | 10104         | (not used)                                                                       |
| 15       | 808           | Due date expired.\nplease re-charge Shaiya cash and purchase a flat fee service or download 3 hour-free coupon from the homepage. |