variable "resource_group_name" {
    type    = string
    default = ""
}

variable "location" {
    type    = string
    default = ""
}

variable "resource_group_tag" {
    type    = map(string)
    default = {}
}