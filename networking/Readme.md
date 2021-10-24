# Networking
Each container will have a network namespace with its own
routing table and routing policy. By default, the network bridge docker0 connects the physical network interface and virtual network interfaces of containers, and the virtual
network interface is the bidirectional cable for the container network namespace and the host one. As a result, there is a pair of virtual network interfaces for a single container: the Ethernet interface (eth0) on the container and the virtual Ethernet interface (veth-) on the host.