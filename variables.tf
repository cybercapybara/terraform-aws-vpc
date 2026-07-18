variable "name" {
  description = "Name tag applied to the VPC."
  type        = string
}

variable "cidr_block" {
  description = "IPv4 CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  description = "Tenancy of instances launched into the VPC. Either default or dedicated."
  type        = string
  default     = "default"

  validation {
    condition     = contains(["default", "dedicated"], var.instance_tenancy)
    error_message = "instance_tenancy must be either default or dedicated."
  }
}

variable "enable_dns_support" {
  description = "Whether DNS resolution is supported for the VPC."
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Whether instances receive public DNS hostnames."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags applied to the VPC."
  type        = map(string)
  default     = {}
}
