variable "name" {
    type        = string
    description = "The group's name."
}

variable "members" {
    type        = list(string)
    default     = []
    description = "A list of IAM User names to associate with the Group."
}

variable "path" {
    type        = string
    default     = "/"
    description = "Path in which to create the group."
}

variable "policy_arns" {
    type        = list(string)
    default     = []
    description = "The list of IAM policies ARNs to attach to the group."
}
