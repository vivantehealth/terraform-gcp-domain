# terraform-gcp-domain
Provisions a "domain", a container for "stacks"

For now this is mostly just a wrapper around the Google module for creating projects with a few best-practices built in

## Development
During development, the module can be referenced with the following syntax

```
  source = "github.com/vivantehealth/terraform-gcp-domain?ref=<commit-sha>"
```

When merging a PR, a release is created, bumping the patch version by default. To bump the minor or major version, ensure that the head commit of the PR contains the text `#minor` or `#major`.

