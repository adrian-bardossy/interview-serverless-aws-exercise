module "serverless_dynamodb_table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "4.4.0"

  name         = local.dynamodb_table_name
  billing_mode = local.billing_mode
  hash_key     = local.hash_key

  attributes = [
    {
      name = local.attribute_name
      type = local.attribute_type
    }
  ]
}




