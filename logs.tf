# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "loja_log_group" {
  name              = "/ecs/loja"
  retention_in_days = 30

  tags = {
    Name = "cb-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "loja_log_stream" {
  name           = "loja-log-stream"
  log_group_name = aws_cloudwatch_log_group.loja_log_group.name
}