1. Get the default update strategy:

```kubectl describe deployment simple-nginx | grep StrategyType```

1. Get the ReplicaSet:

```kubectl describe deployment simple-nginx | grep ReplicaSet```

1. Edit Deployment

1. As you see, a new replica set simple-nginx-694f94f77d is created in the Deployment simple-nginx. Each time the new ReplicaSet scales one Pod up successfully, the old ReplicaSet will scale one Pod down. The scaling process
finishes at the moment that the new ReplicaSet meets the original desired Pod number (as said, 5 Pods), and the old ReplicaSet has zero Pods.