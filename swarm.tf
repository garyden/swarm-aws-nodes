provider "aws" {
  profile    = "GPA-AWS-DEVBOX"
  region     = "us-east-1"
}

resource "aws_instance" "master" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.ssh_key}"
  vpc_security_group_ids = ["${var.default_security_group}"]
  subnet_id     = "${var.subnet_id}"
  associate_public_ip_address = false

  tags = {
    Name  = "master"
  }
}

resource "aws_instance" "worker1" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.ssh_key}"
  vpc_security_group_ids = ["${var.default_security_group}"]
  subnet_id     = "${var.subnet_id}"
  associate_public_ip_address = false

  tags = {
    Name  = "worker1"
  }
}

resource "aws_instance" "worker2" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.ssh_key}"
  vpc_security_group_ids = ["${var.default_security_group}"]
  subnet_id     = "${var.subnet_id}"
  associate_public_ip_address = false

  tags = {
    Name  = "worker2"
  }
}