# CIDR prefix length
_______________________________________________________________________________

A CIDR prefix length is used to limit the number of available IP addresses 
in a network.

### Example 1:
`10.0.0.0/16`

The `/16` at the end of the IP address is called a `CIDR` block.

the `/16` means that all the IP addresses on the network 
must start with the same 16 bits.
_______________________________________________________________________________

### This will make things clearer

                                  fixed      fixed     
IP address in decimal (base-10): `10`      .`0`       .0        .0        `/16` 
IP address in binary (base-2):   `00001010`.`00000000`.00000000 .00000000 `/16`
_______________________________________________________________________________

So `10.0.`0.0/16 means that all the IP address in the network must 
start with `10.0`
_______________________________________________________________________________
