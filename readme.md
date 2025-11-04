# K8s GitOps Demo – Polling App

This repository demonstrates a GitOps-style deployment using Jenkins.

## Branches
- **dev** → Deploys to test (dev) cluster
- **prod** → Deploys to production cluster

## Deployment Logic
Each branch contains Kubernetes manifests under `polling-app/dev` and `polling-app/prod`.

The Jenkins pipeline detects the branch and runs `scripts/deploy.sh` to apply the correct manifests.
