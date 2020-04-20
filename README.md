# Terraform AWS IAM Group

**terraform-aws-iam-group** is Terraform module for creating:
 * IAM Group
 * (optionally) adding members to the IAM Group
 * (optionally) attaching IAM policy to the IAM Group 

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |
| aws provider | >= 2.47 |

## Inputs

| Name | Description | Required |
|------|-------------|----------|
| name | The group's name. | true
| members | A list of IAM User names to associate with the Group. Defaults to **[]**. | false
| path | Path in which to create the group. Defaults to **/**. | false
| policy_arns | The list of IAM policies ARNs to attach to the group. Defaults to **[]**. | false

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS for this group. |
| id | The group's ID. |
| members | The list of group members. |
| name | The group's name. |
| path | The path of the group in IAM. |
| policy_arns | The ARNs of the policies applied to the group. |
| unique_id | The unique ID assigned by AWS. |
