## Assignemnt summary
### Github actions
- in .github/workflows/terraform.yml there is a pipeline file to run and deploy the modules
- on feature branch or on merge request it will run up to plan (will not run terraform apply)
- on merge and main branch it will also run a terraform apply
- terraform state file is stored on S3 bucket with state locking on dynamo db 
### Module
- Module contains 5 submodules (one is buggy):
  1. DynamoDB - creates DynamoDB table with string attribute into it
  2. IAM creates the exexution role to run the lambda function
  3. Lambda creates nodejs 22 lambda function to run a simple hello worls, logs are caught from its execution in cloudwatch
  4. Creates S3 bucket and outputs its ID
  5. API_Gateway - modularized but commented out since it is catching some issues

  ### Info regarding API Gateway module
  - Due to very limited personal time this week (family matters), the API Gateway module is included but currently commented out, as the integration was taking longer than expected. The core infrastructure (IAM, Lambda, S3, DynamoDB) is fully functional and deployed.
  - I am happy to finalize the API Gateway part in the next round if needed.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.100 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_DynamoDB"></a> [DynamoDB](#module\_DynamoDB) | ./modules/DynamoDB | n/a |
| <a name="module_IAM"></a> [IAM](#module\_IAM) | ./modules/IAM | n/a |
| <a name="module_Lambda"></a> [Lambda](#module\_Lambda) | ./modules/Lambda | n/a |
| <a name="module_S3"></a> [S3](#module\_S3) | ./modules/S3 | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
