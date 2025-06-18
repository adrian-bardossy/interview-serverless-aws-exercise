output "lambda_invoke_arn" {
  value = aws_lambda_function.interview_lambda_function.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.interview_lambda_function.function_name
}
