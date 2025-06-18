locals {
  dynamodb_table_name = "serverless-table-adrian"
  billing_mode        = "PAY_PER_REQUEST"
  hash_key            = "id"
  attribute_name      = "id"
  attribute_type      = "S"
}