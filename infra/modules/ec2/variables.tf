variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "web-01"
}

variable "ami" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance into"
  type        = string
}

variable "key_name" {
  description = "Optional SSH key pair name"
  type        = string
  default     = ""
}

variable "associate_public_ip" {
  description = "Whether to assign a public IP address"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to apply"
  type        = map(string)
  default     = {}
}
