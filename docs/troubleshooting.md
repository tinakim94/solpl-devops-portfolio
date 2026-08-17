# Troubleshooting Notes

## Case 1 — IAM AccessDenied

### Problem
An AWS operation failed because the execution identity did not have sufficient permissions.

### Investigation
- Identified the exact AWS action that failed.
- Checked which IAM identity was executing the action.
- Reviewed the attached IAM policy.
- Compared the policy scope with the resource being accessed.

### Resolution
Adjusted the relevant permissions and verified the operation again.

### Takeaway
I learned to troubleshoot IAM by separating:
1. **Who** is making the request
2. **What action** is being attempted
3. **Which resource** is targeted
4. **Which policy** allows or denies that action

---

## Case 2 — CloudFront Cache

### Problem
A frontend deployment completed, but the latest changes were not immediately visible.

### Investigation
- Verified that the updated static files existed in the deployment destination.
- Reviewed the CloudFront distribution and cache behavior.
- Confirmed that cached content was still being served.

### Resolution
Checked cache invalidation and deployment paths, then verified the updated content.

### Takeaway
Deployment verification needs to include both the origin and the content delivery layer.

---

## Case 3 — API Gateway Metrics Missing in Grafana

### Problem
API Gateway metrics were not initially visible in Grafana Cloud.

### Investigation
- Checked the CloudWatch data source and metric namespace.
- Confirmed that no meaningful API traffic had yet occurred.

### Cause
The expected CloudWatch metrics were generated after API traffic occurred.

### Resolution
Sent API requests, verified metric creation in CloudWatch, and then confirmed the metrics appeared in Grafana.

### Takeaway
Monitoring issues are not always integration failures; first verify whether the underlying metrics actually exist.
