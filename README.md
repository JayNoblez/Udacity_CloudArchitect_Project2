# Udacity_CloudArchitect_Project2
Design, Provision and Monitor AWS Infrastructure at Scale

#### Making Tradeoffs per cost allocation scenarios.

* **Scenario 1:** If the monthly bill target should not exceed $8000 - $10,000? - [Initial Cost Estimate](https://calculator.aws/#/estimate?id=e9b8d9187e38b54de4a39dc3bf1e42036f697e3d)
* **Scenario 2:** If the budget is slashed, such that monthly cloud spend should not exceed $6500?. How can we adapt/optimize costs? - [Reduced Cost Estimate](https://calculator.aws/#/estimate?id=9cbf71d8403880304dc243cc82a92e96f7c647b4)
* **Scenario 3:** If the budget was increased to $20,000. What resources can be added and why? - [Increased Cost Estimate](https://calculator.aws/#/estimate?id=d848b55e15b3828c9dddb4c99159c831ef1f9236)

**Key Changes made**:

**In Scenario 2** - To reduce cost: 
> Focus tweaks on areas of bulk spend (For example, Compute, or Storage). In this specific case, the initial total storage on the RDS instances was 50TB. Slash to 25TB

Why? Leaving the storage capacity at 25TB is still an optimal solution since the earlier provisioned capacity would likely not be maxxed to capacity for an expected 50,000 users.  The storage can be managed with some Lifecycle policies to retire stale DB Snapshots and free up space (FIFO).

**In Scenario 3:** *Goal* - Achieve Best Performance via the higher spending cap.
 > Again focus on Performance optimizations, and/or adding redundancy. 
 
 *One approach would be to add resources in a new region*.
 **Why** - To mitigate for a disaster in us-east-1.
 
 In this case, I have focused on improving performance.
  - Change to larger Compute Optimized instances (c5.4xlarge). 
  - The attached EBS volumes are changed from genal purpose SSDs to Provisioned IOPS in all EC2 and RDS instances
  - New Availability Zone in a New region for Failover in case of a disaster. Has its own VPC Nat Gateway, RDS Read replica, EC2 Autoscaling for both Web and App Servers. All are running at best effort reduced resource capacity to save costs. 
