# GitHub Actions Examples

These workflow files are **sanitized portfolio examples**.

They show the deployment workflow shape used in the project:
- trigger on push
- frontend / Lambda deployment
- AWS authentication through repository secrets

The original team workflow may have contained different resource names or steps.

## Important

Do not commit AWS credentials directly into workflow YAML.

For a public demo:
- keep placeholders
- or configure repository secrets
- or use GitHub OIDC with AWS after you understand the setup
