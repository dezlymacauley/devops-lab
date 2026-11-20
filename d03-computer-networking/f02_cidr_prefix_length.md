# CIDR prefix length
_______________________________________________________________________________

A CIDR prefix length is used to limit the range of IPv4 address that can be
assigned in a network.

The higher the CIDR prefix length, the smaller the number of IP addresses
you have available.
_______________________________________________________________________________

## Example 1:
`10.0.0.0/16`

The `/16` at the end of the IP address is called a `CIDR prefix length`

the `/16` means that all the IP addresses on the network 
must start with the same 16 bits (The IP address in binary format)
_______________________________________________________________________________

### This will make things clearer

                                  fixed      fixed     
IP address in decimal (base-10): `10`      .`0`       .0        .0        `/16` 
IP address in binary (base-2):   `00001010`.`00000000`.00000000 .00000000 `/16`
_______________________________________________________________________________

- So 10.0.0.0/16 means that all the IP addresses in the network
must start with `10.0`

- IPv4 addresses contain 32 bits.
- The CIDR prefix length `/16` means that 16 of those 32 bits are fixed.
- So 32 - 16 = 16 bits available 

- The formula to work out the number of addresses available is:
- 2^number_of_bits_available

- So 2^16 bits = `65,536 IP addresses`
_______________________________________________________________________________


_______________________________________________________________________________

## Example 2:
`10.0.0.0/24`

The `/24` at the end of the IP address is called a CIDR prefix length.

The `/24` means that all the IP addresses on the network
must start with the same 24 bits (The IP address in binary format)
_______________________________________________________________________________

### This will make things clearer

                                  fixed      fixed     
IP address in decimal (base-10): `10`      .`0`       .`0`        .0        `/24` 
IP address in binary (base-2):   `00001010`.`00000000`.`00000000` .00000000 `/24`

So 10.0.0.0/24 means that all the IP addresses in the network
must start with `10.0.0`

- IPv4 addresses contain 32 bits.
- The CIDR prefix length `/24` means that 24 of those 32 bits are fixed.
- So 32 - 24 = 8 bits available.

- The formula to work out the number of addresses available is:
- 2^number_of_bits_available

- So 2^8 = `256 IP addresses`
_______________________________________________________________________________


_______________________________________________________________________________

## Example 3:
`10.0.0.0/20`

The `/20` at the end of the IP address is called a CIDR prefix length.

The `/20` means that all the IP addresses on the network 
must start with the same 20 bits (The IP address in binary format).
_______________________________________________________________________________

### This will make things clearer

                                  fixed      fixed     
IP address in decimal (base-10): `10`      .`0`       . `0`         .0       `/20` 
IP address in binary (base-2):   `00001010`.`00000000`. `0000`0000 .00000000 `/20`

So `10.0.0.0/20` means that all the IP addresses in the network
must start with `10.0.0` 

The CIDR prefix length of `\20` is a bit tricky to display because,
unlike the `CIDR` prefix length of `\24` (which is divisible by 8),
`\20` is not divisible by 8.

However the formula does not change:
- IPv4 addresses contain 32 bits.
- The CIDR prefix length `/20` means that 20 of those 32 bits are fixed.
- So 32 - 20 = 12 bits available.
- The formula to work out the number of addresses available is:
- 2^number_of_bits_available
- So 2^12 = `4,096 IP addresses`

- So to simplify things, think of the `/20` CIDR prefix,
as a tool that you use when you want the first 3 values of an IPv4 address
(in decimal aka base-10) to be fixed...

But you want to have more available IP addresses than 
the limit of `256 IP address` that a `/24` CIDR prefix would impose.
_______________________________________________________________________________
