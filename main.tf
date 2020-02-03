resource "aws_iam_group" "main" {
    name = var.name
    path = var.path
}

resource "aws_iam_group_membership" "main" {
    count = length(var.members) > 0 ? 1 : 0

    name  = "main"
    group = aws_iam_group.main.name
    users = var.members
}

resource "aws_iam_group_policy_attachment" "main" {
    count = length(var.policy_arns) > 0 ? length(var.policy_arns) : 0

    group      = aws_iam_group.main.name
    policy_arn = element(var.policy_arns, count.index)
}
