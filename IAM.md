## IAM Permission

The Policy required to deploy this module:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "eks:DescribeCluster"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
```
## Azure Role Permissions

```json
{
  "Name": "AKS Describe Role",
  "IsCustom": true,
  "Description": "Allows describing AKS clusters",
  "Actions": [
    "Microsoft.ContainerService/managedClusters/read"
  ],
  "DataActions": [],
  "NotDataActions": [],
  "AssignableScopes": [
    "/subscriptions/{subscriptionId}"
  ]
}
```

## Google IAM Permissions

```json
{
  "title": "GKE Describe Role",
  "description": "Allows describing GKE clusters",
  "stage": "GA",
  "includedPermissions": [
    "container.clusters.get"
  ]
}
```