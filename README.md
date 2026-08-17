# SolPl — AWS Serverless DevOps Portfolio

**Role:** CI/CD & Monitoring  
**Focus:** AWS serverless infrastructure, deployment automation, monitoring, load testing, and troubleshooting

> This repository is a **sanitized portfolio reconstruction** of the DevOps work I performed in the SolPl team project.  
> It intentionally excludes credentials, account IDs, private source code, and team-owned application code.  
> Files under `examples/` are representative examples for portfolio purposes and are not claimed to be the exact original production files.

## Project Overview

SolPl is a location recommendation / save service built on an AWS serverless architecture.

High-level flow:

```text
Client
  ↓
Amazon API Gateway
  ↓
AWS Lambda
  ↓
Amazon DynamoDB

Static frontend → Amazon S3 / CloudFront
Monitoring → Amazon CloudWatch → Grafana Cloud
CI/CD → GitHub Actions
IaC → Terraform
Load test → k6
```

## What I Worked On

- Built GitHub Actions workflows for automated frontend and Lambda deployment
- Managed AWS infrastructure with Terraform
- Configured CloudWatch Logs, Metrics, and Alarms
- Connected CloudWatch metrics to Grafana Cloud dashboards
- Monitored API requests, latency, 4XX/5XX errors, Lambda duration/errors/throttles
- Performed API load and error testing with k6
- Investigated IAM `AccessDenied` errors by reviewing policies and permissions
- Troubleshot deployment issues related to CloudFront caching
- Documented troubleshooting steps and operating procedures for the team

## Repository Structure

```text
solpl-devops-portfolio/
├─ README.md
├─ .gitignore
├─ ARCHITECTURE.md
├─ docs/
│  ├─ troubleshooting.md
│  ├─ monitoring.md
│  └─ security-notes.md
├─ examples/
│  ├─ terraform/
│  │  ├─ README.md
│  │  ├─ versions.tf
│  │  ├─ variables.tf
│  │  ├─ main.tf
│  │  └─ outputs.tf
│  └─ github-actions/
│     ├─ README.md
│     ├─ deploy-lambda.yml
│     └─ deploy-frontend.yml
├─ monitoring/
│  └─ README.md
└─ k6/
   └─ load-test.js
```

## Tech Stack

| Area | Technologies |
|---|---|
| Cloud | AWS Lambda, API Gateway, DynamoDB, S3, CloudFront, IAM, CloudWatch |
| IaC | Terraform |
| CI/CD | GitHub Actions |
| Monitoring | CloudWatch, Grafana Cloud |
| Testing | k6 |
| OS / Infra | Linux |
| Source Control | Git, GitHub |

## Key Troubleshooting Cases

### 1. IAM AccessDenied

**Symptom**  
A deployment or AWS resource operation failed with an `AccessDenied` error.

**Approach**
1. Checked the failing action and resource.
2. Reviewed the IAM policy attached to the relevant identity.
3. Compared required permissions with the current policy.
4. Updated the permissions and re-ran the operation.

**What I learned**  
IAM troubleshooting is easier when the failing action, target resource, and policy scope are checked separately.

### 2. CloudFront Cache

**Symptom**  
Updated frontend content was not immediately visible after deployment.

**Approach**
1. Verified that the new files had been deployed.
2. Checked the CloudFront distribution path and caching behavior.
3. Identified cached content as the reason the previous version was still served.
4. Used cache invalidation / deployment checks to confirm the update.

**What I learned**  
Successful deployment does not always mean that users immediately receive the latest content; the delivery layer must also be checked.

### 3. API Gateway Metrics Not Visible in Grafana

**Symptom**  
API Gateway metrics were not initially visible in Grafana.

**Cause**  
CloudWatch metrics were generated only after actual API traffic occurred.

**Resolution**  
Generated API requests and confirmed that the related CloudWatch metrics appeared and were then available in Grafana.

## Monitoring

The monitoring setup focused on:

- API request volume
- API latency
- API 4XX / 5XX errors
- Lambda duration
- Lambda errors
- Lambda throttles

CloudWatch Alarms were configured to help detect error and latency conditions.

See [`monitoring/README.md`](monitoring/README.md) for details.

## k6 Testing

A sanitized k6 example is included in [`k6/load-test.js`](k6/load-test.js).

It demonstrates how I tested:
- increasing API request volume
- response latency
- error responses
- basic service behavior under load

## Security / Secret Handling

This public portfolio repository does **not** contain:
- AWS access keys
- secret keys
- account IDs
- private API keys
- team-owned application source code
- real production endpoints

See [`docs/security-notes.md`](docs/security-notes.md).

## Portfolio

- Notion Portfolio: https://app.notion.com/p/NamHyoung-Kim-Portfolio-3252206402f980c2a03cfd39486b0751?source=copy_link
- LinkedIn: https://www.linkedin.com/in/namhyoung-kim-1223a0368/

## Note

This repository is intended to demonstrate my DevOps learning and project responsibilities honestly.  
Where original team code could not be published, I included sanitized examples and documentation instead.
