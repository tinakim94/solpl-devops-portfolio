# Monitoring Design

## Goals

The monitoring environment was designed to:
- observe service traffic and performance
- detect API / Lambda errors
- identify abnormal latency
- provide a dashboard for quick status checks

## Metrics Observed

### API Gateway
- Request count
- Latency
- 4XX errors
- 5XX errors

### Lambda
- Duration
- Errors
- Throttles

## Tools

- **Amazon CloudWatch** — logs, metrics, alarms
- **Grafana Cloud** — visualization and dashboarding

## Alarm Examples

Examples of alarm conditions used in the project included:
- 5XX errors
- increased 4XX errors
- Lambda execution errors
- response latency

## Validation

k6 was used to generate API traffic and error conditions so that changes in request, latency, and error metrics could be observed.
