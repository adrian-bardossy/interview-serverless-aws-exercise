resource "archive_file" "lambda_file" {
  type        = "zip"
  source_dir  = "${path.module}/lambdas"
  output_path = "${path.module}/lambdas.zip"
}

resource "aws_lambda_function" "interview_lambda_function" {
  function_name = local.lambda_function_name
  role          = var.lambda_role_arn
  handler       = "index.handler"
  runtime       = "nodejs22.x"

  filename         = archive_file.lambda_file.output_path
  source_code_hash = archive_file.lambda_file.output_base64sha256
}
