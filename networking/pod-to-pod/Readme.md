# Pod-to-Pod communication
As mentioned, containers in a Pod share the same network namespace. And a Pod is the
basic computing unit in Kubernetes. Kubernetes assigns an IP to a Pod in its world. Every
Pod can see every other with the virtual IP in Kubernetes network. While talking about the
communication between Pods , we can separate into two scenarios: Pods that communicate
within a node, or Pods that communicate across nodes. For Pods in single node, since they
have separate IPs, their transmissions can be held by bridge, same as containers in a Docker
node. However, for communication between Pods across nodes, how would be the package
routing work while Pod doesn't have the host information (the host IP)?