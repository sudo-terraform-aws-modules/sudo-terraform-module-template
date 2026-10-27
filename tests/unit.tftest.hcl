# Unit tests run against a mock provider, so they need no AWS credentials.
# Use command = plan, and add a run for every secure default, input validation
# and behaviour change. See terraform-aws-cognito for a full example.

mock_provider "aws" {}

run "plans_with_defaults" {
  command = plan

  # assert {
  #   condition     = aws_example.this[0].deletion_protection == true
  #   error_message = "Deletion protection must be on by default."
  # }
}

# run "rejects_invalid_input" {
#   command = plan
#
#   variables {
#     example = "invalid"
#   }
#
#   expect_failures = [var.example]
# }
