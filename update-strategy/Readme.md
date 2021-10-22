1) Get the default update strategy:

```kubectl describe deployment simple-nginx | grep StrategyType```

2) Get the ReplicaSet:

```kubectl describe deployment simple-nginx | grep ReplicaSet```