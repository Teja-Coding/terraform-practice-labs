variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}

variable "ec2_instance_type" {
  type = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map 
  default = {
    Name = "my_instance"
    Terraform = "true"
    Project = "joinDevOps"
    Environment = "dev"
  }
}

variable "security_group_name" {
    type = string
  default = "my_group"
}

variable "ingress_to_port" {
  default = 0
}
variable "ingress_from_port" {
  default = 0
}
variable "egress_to_prot" {
  default = 0
}
variable "egress_from_port" {
  default = 0
}

variable "protocol" {
  default = "-1"
}
variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "ec2_sg_tags" {
  type = map 
  default = {
    Name = "my_sg"
    Terraform = "true"
    Project = "joinDevOps"
    Environment = "dev"
  }
}