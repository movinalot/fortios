
variable "hostname_a" {
  description = "value"
  default     = ""
  type        = string
}

variable "hostname_b" {
  description = "value"
  default     = ""
  type        = string
}

variable "token" {
  description = "value"
  default     = ""
  type        = string
}

variable "insecure" {
  description = "value"
  default     = "true"
  type        = string
}


variable "resource_group_and_subscription" {
  type = map(any)
}
