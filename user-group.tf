
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.head_of_development.name,
    aws_iam_user.developer.name,
  ]

  group = aws_iam_group.group.name
}

resource "aws_iam_group" "group" {
  name = "developers"
}

resource "aws_iam_user" "head_of_development" {
  name = "jaime"
  tags = {
    environment = "development"
  }
}

resource "aws_iam_user" "developer" {
  name = "continous_integration"
}