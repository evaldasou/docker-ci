workflow "New workflow" {
  on = "push"
  resolves = ["Docker Registry"]
}

action "docker" {
  uses = "actions/docker/cli@76ff57a"
}

action "Docker Registry" {
  uses = "actions/docker/login@76ff57a"
  needs = ["docker"]
}
