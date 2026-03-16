variable "region" {
  description = "region"
  type        = string
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami" {
  description = "EC2 instance ami"
  type        = string
  default     = "ami-06e3c045d79fd65d9"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "intern-key"
}