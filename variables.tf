variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default = "us-east-1"
}

variable "ssh_key" {
  description = "default ssh key"
  default = "devbox_linux_2"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default = "ami-039a49e70ea773ffc"
}

variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}

variable "swarm_vpc_id" {
  description = "vpc id"
  default = "vpc-0207841d593777346"
}

variable "subnet_id" {
  description = "subnet id"
  default = "subnet-0f8673300e2369a08"
}

variable "default_security_group" {
  description = "default security group"
  default = "sg-03acb20a5f06b44ee"
}

