# Subnet Math
_______________________________________________________________________________

## IP address in decimal format (aka base-10)

- An IP Address is made up of four values separated by a dot.
- Each of those four numbers is called an octet.
- So an IP address has four octets.
_______________________________________________________________________________

Each of the four octets can be a value from 0 to 255 (inclusive)
- Example 1:    `0.0.0.0`
- Example 2:    `255.255.255.255` 
_______________________________________________________________________________

## IP address in binary format

If you want to write an octet in binary format (aka base-2), 
you use something called `place values`

Each octet = 8 bits

| Place values                  | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| ----------------------------- | --- | -- | -- | -- | - | - | - | - |
| 💡 Switch (1 = on, 0 = off)   | 0   | 0  | 0  | 0  | 0 | 0 | 0 | 0 |
_______________________________________________________________________________

## The room analogy

- Each octet is a building with 8 rooms.
- Each room has a fixed price (its place value).
- A light switch in each room is either on (`1`) or off (`0`).
- You only pay for rooms with the light on.
- The total bill is the decimal number.

Example: lights on in the 8 and 2 rooms → 8 + 2 = `10` → `00001010`
_______________________________________________________________________________

## Example 1: 0.0.0.0


| Octet 1  | Octet 2  | Octet 3  | Octet 4  |
| -------- | -------- | -------- | -------- |
| 0        | 0        | 0        | 0        |
| 00000000 | 00000000 | 00000000 | 00000000 |


| Room                       | 1   | 2  | 3  | 4  | 5 | 6 | 7 | 8 |
| -------------------------- | --- | -- | -- | -- | - | - | - | - |
| Price (place value)        | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| 💡 Light (1 = on, 0 = off) | 0   | 0  | 0  | 0  | 0 | 0 | 0 | 0 |

- No lights are on, so you pay for nothing.
- Total bill: 0
- Binary: `00000000`

So `0.0.0.0` in binary is `00000000.00000000.00000000.00000000` 
_______________________________________________________________________________

## Example 2: 255.255.255.255


| Octet 1  | Octet 2  | Octet 3  | Octet 4  |
| -------- | -------- | -------- | -------- |
| 255      | 255      | 255      | 255      |
| 11111111 | 11111111 | 11111111 | 11111111 |


| Room                       | 1   | 2  | 3  | 4  | 5 | 6 | 7 | 8 |
| -------------------------- | --- | -- | -- | -- | - | - | - | - |
| Price (place value)        | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| 💡 Light (1 = on, 0 = off) | 1   | 1  | 1  | 1  | 1 | 1 | 1 | 1 |

- All lights are on, so you pay for every room.
- Total bill: 128 + 64 + 32 + 16 + 8 + 4 + 2 + 1 = 255
- Binary: `11111111`

So `255.255.255.255` in binary is `11111111.11111111.11111111.11111111` 
_______________________________________________________________________________

## Example 3: 10.0.0.0

This address has four octets, and only the first one has any lights on.

| Room                       | 1   | 2  | 3  | 4  | 5 | 6 | 7 | 8 |
| -------------------------- | --- | -- | -- | -- | - | - | - | - |
| Price (place value)        | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| 💡 Light (1 = on, 0 = off) | 0   | 0  | 0  | 0  | 1 | 0 | 1 | 0 |

- Lights are on in the 8 room and the 2 room.
- Total bill: 8 + 2 = 10
- Binary: `00001010`

The other three octets are `0`, so all their lights are off (`00000000`).

| Octet 1  | Octet 2  | Octet 3  | Octet 4  |
| -------- | -------- | -------- | -------- |
| 10       | 0        | 0        | 0        |
| 00001010 | 00000000 | 00000000 | 00000000 |

- **Decimal:** `10.0.0.0`
- **Binary:** `00001010.00000000.00000000.00000000`
- **Total bits:** 4 octets × 8 bits = 32 bits

_______________________________________________________________________________
