# Udacity_CloudArchitect_Project2
Design, Provision and Monitor AWS Infrastructure at Scale

Making Tradeoffs per cost allocation scenarios.
Scenario 1: Monthly Bill Estimate Targer should not exceed $8000 - $10,000 - [Initial Cost Estimate](https://calculator.aws/#/estimate?id=e9b8d9187e38b54de4a39dc3bf1e42036f697e3d)
Scenario 2: Budget is slashed to not more than $6500. Adapt. - [Reduced Cost Estimate](https://calculator.aws/#/estimate?id=9cbf71d8403880304dc243cc82a92e96f7c647b4)
 - Changes made: Reduce backup storage on the RDS instances. Leaving the Storage capacity at 25TB is still an optimal solution since the earlier provisioned capacity is likely not maxxed to capacity for expected 50,000 users.  
 The storage can be managed with some Lifecycle policies to retire stale DB Snapshots and free up space(FIFO)
