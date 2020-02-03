output "arn" {
    value = aws_iam_group.main.arn
    description = "The ARN assigned by AWS for this group."
}

output "id" {
    value = aws_iam_group.main.id
    description = "The group's ID."
}

output "members" {
    value = length(var.members) > 0 ? aws_iam_group_membership.main.0.users : []
    description = "The list of group members."
}

output "name" {
    value = aws_iam_group.main.name
    description = "The group's name."
}

output "path" {
    value = aws_iam_group.main.path
    description = "The path of the group in IAM."
}

output "policy_arns" {
    value = aws_iam_group_policy_attachment.main.*.policy_arn
    description = "The ARNs of the policies applied to the group."
}

output "unique_id" {
    value = aws_iam_group.main.id
    description = "The unique ID assigned by AWS."
}
