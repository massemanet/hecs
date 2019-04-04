hecs
===

* tab completion for ECS.

ECS is AWS' lame copy of Kubernetes. It can be manipulated through the AWS CLI
tool. `hecs` adds some higher level functionality, and adds tab completion.

`hecs` depends upon `jq`, `aws`, and `ssh`. It will try to use `aws-vault` if present.
