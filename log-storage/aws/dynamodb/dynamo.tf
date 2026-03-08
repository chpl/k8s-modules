resource "aws_dynamodb_table" "deployment_logs_table" {
  name         = "deployment-step-service-${var.env0_stage}-logs-${var.agent_key}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  range_key    = "timestamp"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "timestamp"
    type = "N"
  }

  point_in_time_recovery {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

  deletion_protection_enabled = false
}

resource "aws_dynamodb_table" "deployment_remote_run_logs_table" {
  name         = "deployment-step-service-${var.env0_stage}-remote-run-logs-${var.agent_key}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "deploymentLogId"
  range_key    = "offsetStart"

  attribute {
    name = "deploymentLogId"
    type = "S"
  }

  attribute {
    name = "offsetStart"
    type = "N"
  }

  point_in_time_recovery {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  deletion_protection_enabled = true
}
