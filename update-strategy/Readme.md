1. Get the default update strategy:

```kubectl describe deployment simple-nginx | grep StrategyType```

1. Get the ReplicaSet:

```kubectl describe deployment simple-nginx | grep ReplicaSet```

1. Edit Deployment

1. As you see, a new replica set simple-nginx-694f94f77d is created in the Deployment simple-nginx. Each time the new ReplicaSet scales one Pod up successfully, the old ReplicaSet will scale one Pod down. The scaling process
finishes at the moment that the new ReplicaSet meets the original desired Pod number (as said, 5 Pods), and the old ReplicaSet has zero Pods.

1. *kubectl rollout history deployment simple-nginx* You will get three revisions, as in the preceding lines, for the Deployment
simple-nginx. For Kubernetes Deployment, each revision has a matched
ReplicaSet and represents a stage of running an update command. The first
revision is the initial state of simple-nginx. Although there is no command tag
for indication, Kubernetes takes its creation as its first version. However, you
could still record the command when you create the Deployment.

*Recreate*
In our understanding, the recreate mode is good for an application under development.
With recreate, Kubernetes just scales the current ReplicaSet down to zero Pods, and
creates a new ReplicaSet with the full desired number of Pods. Therefore, recreate has a
shorter total updating time than rolling-update because it scales ReplicaSets up or down
simply, once for all. Since a developing Deployment doesn't need to take care of any user
experience, it is acceptable to have downtime while updating and enjoy faster updates

minReadySeconds
maxUnavailable
maxSurge