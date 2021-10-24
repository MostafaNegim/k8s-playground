# Networking
Each container will have a network namespace with its own
routing table and routing policy. By default, the network bridge docker0 connects the physical network interface and virtual network interfaces of containers, and the virtual
network interface is the bidirectional cable for the container network namespace and the host one. As a result, there is a pair of virtual network interfaces for a single container: the Ethernet interface (eth0) on the container and the virtual Ethernet interface (veth-) on the host.
## What does the container "pause" do?
Just as its name suggests, this container does nothing but "pause".
However, it preserves the network settings, and the Linux network
namespace, for the Pod. Anytime the container shutdowns and restarts,
the network configuration will still be the same and not need to be
recreated, because the "pause" container holds it. You can check its code
and Dockerfile at https:/​/​github.​com/​kubernetes/​kubernetes/​tree/
master/​build/​pause for more information.
The "pause" container is a network container, which is created when a Pod
is created and used to handle the route of the Pod network. Then, two containers will share the network namespace with pause; that's why they see each other as localhost.
## Create a network container in Docker
In Docker, you can easily make a container into a network container,
sharing its network namespace with another container. Use the command
line: $ docker run --network=container:<CONTAINER_ID or
CONTAINER_NAME> [other options]. Then, you will be able to start a
container which uses the network namespace of the assigned container.

Refrence: Kubernetes Cookbook