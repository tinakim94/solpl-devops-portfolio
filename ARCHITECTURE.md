# Architecture

## High-Level Architecture

```text
                           ┌───────────────────────┐
                           │       Client          │
                           └───────────┬───────────┘
                                       │
                        ┌──────────────▼──────────────┐
                        │      Amazon API Gateway     │
                        └──────────────┬──────────────┘
                                       │
                              ┌────────▼────────┐
                              │   AWS Lambda    │
                              └────────┬────────┘
                                       │
                              ┌────────▼────────┐
                              │   DynamoDB      │
                              └─────────────────┘

Frontend: S3 → CloudFront

Observability:
API Gateway / Lambda → CloudWatch → Grafana Cloud

Delivery:
GitHub → GitHub Actions → AWS

Infrastructure:
Terraform → AWS resources
```

## My DevOps Scope

My main responsibility in the team project was **CI/CD and monitoring**.

I worked on:
- GitHub Actions deployment workflows
- Terraform-based AWS resource management
- CloudWatch monitoring and alarms
- Grafana Cloud visualization
- k6 API load testing
- IAM and CloudFront troubleshooting
- operational documentation

## Public Portfolio Boundary

The architecture above is simplified for public portfolio use.
Private implementation details, secrets, account identifiers, and team-owned application source code are intentionally excluded.
