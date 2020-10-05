# archiveOS
archiveOS: SCUPPER™ Club's Foundational Operating System

2020.10.01

Goals:
 * Create a "self-hosting" distributed operating system
 * Write the codebase so that the model can be easily duplicated
 * Store long term archives as de-centralized clusters of data
 * Companion to fwiffOS, a distributed crawling system

2020.10.05

## stage 1

Run from Raspberry Pi:

1) Installs latest version of Terraform
2) Deploys Digital Ocean single-node Nomad cluster
3) registers DNS zone for a.test.scupper.org

## stage 2
Run from test cloud node:

1) Joins single-node Nomad cluster (as second node)
2) sync lmdb DB between each node
3) Your App Here
