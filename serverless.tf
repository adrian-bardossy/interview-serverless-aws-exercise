module "S3" {
  source = "./modules/S3"
}

module "IAM" {
  source = "./modules/IAM"
}

module "Lambda" {
  source          = "./modules/Lambda"
  lambda_role_arn = module.IAM.lambda_execution_role_arn
}

module "DynamoDB" {
  source = "./modules/DynamoDB"
}

# Commented out as it is causing some errors on the way, all the other modules are working
# module "api_gateway" {
#   source            = "./modules/API_Gateway"
#   lambda_invoke_arn = module.IAM.lambda_execution_role_arn
#   lambda_function_name = module.Lambda.lambda_function_name
# }



