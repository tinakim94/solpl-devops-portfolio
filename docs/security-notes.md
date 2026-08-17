# Security Notes for Public Portfolio

This repository is designed for public viewing by recruiters and engineers.

## Do Not Commit

Never commit:
- AWS Access Key IDs
- AWS Secret Access Keys
- session tokens
- private API keys
- passwords
- real `.env` files
- AWS account IDs
- private endpoint URLs
- certificates / private keys
- company or team confidential source code

## Sanitization

Example files in this repository use placeholders such as:
- `YOUR_BUCKET_NAME`
- `YOUR_FUNCTION_NAME`
- `https://example.execute-api...`

These values must remain sanitized in the public repository.

## GitHub Secrets

If you later use this repository for a real deployment demo, store sensitive values in:
- GitHub Actions Secrets
- AWS IAM roles / OIDC
- environment-specific secret management

Do not hard-code credentials in YAML, Terraform, JavaScript, or documentation.
