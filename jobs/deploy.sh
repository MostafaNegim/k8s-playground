#!/bin/bash

kubectl create -f job-dpkg.yaml

k delete jobs.batch package-check

# Repeatable Job
k apply -f job-dpkg-repeat.yaml
k delete jobs.batch package-check

# Parallel Job
k apply -f job-dpkg-parallel.yaml
k delete jobs.batch package-check

# Cron jobs
k apply -f cron-job.yaml
k delete cronjobs.batch package-check