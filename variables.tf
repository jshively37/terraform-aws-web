variable "business_unit" {
  description = "Business Unit"
  default     = "demo"
}

variable "cert_name" {
  description = "Name of cert to use"
  default     = "jeffrey_shively"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "jeffrey_shively_web"
}

variable "network_cidr_block" {
  description = "CIDR Block"
  default     = "10.0.200.0/22"
}

variable "packer_name" {
  description = "Name of the packer image"
  default     = "httpdv2"
}

variable "public_cidr_block" {
  description = "Network CIDR Block"
  default     = "10.0.201.0/24"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "user" {
  description = "User Name"
  default     = "JEFFREY_SHIVELY"
}
