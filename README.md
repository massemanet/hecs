hecs
===

* tab completion for ECS.

ECS is AWS' rather lame copy of Kubernetes. It can be manipulated through the
AWS CLI tool.

  `hecs` is helper for navigating ECS. It's mostly a thin wrapper around
'aws ecs'; its power comes from hecs' ability to tab complete at every
level.

  It is often helpful to think of ECS entities as forming a graph;
  profile -> cluster -> task-definition -> task -> instance -> container

  hecs takes one path through such a graph as input, and can

# `list` objects on the next level
# `describe` the current object
# `connect` to the obejct (if it is an instance or a container)

  `hecs list-commands` shows available commands.

`hecs` depends upon `jq`, `aws`, and `ssh`. It will try to use `aws-vault` if present.

