# CIDR prefix length
_______________________________________________________________________________

A CIDR prefix length is used to limit the range of IP address that can be
assigned in a network.
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

- So `10.0.`0.0/16 means that all the IP addresses in the network
must start with `10.0`

- IPv4 addresses contain 32 bits.
- The CIDR prefix length `/16` means that 16 of those 32 bits are fixed.
- So 32 - 16 = 16 bits available 

- The formula to work out the number of addresses available is:
- 2^number_of_bits_available
- So 2^16 bits = `65,536 IP addresses`
_______________________________________________________________________________

## Example 2:
`10.0.0.0/24`

_______________________________________________________________________________
