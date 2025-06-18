resource "aws_iam_role" "lambda_exec_role" {
  name               = local.iam_policy_name
  assume_role_policy = file("${path.module}/iam_assume_role_policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = local.iam_policy_service_role
}
