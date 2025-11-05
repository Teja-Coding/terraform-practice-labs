variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}

variable "ec2_instance_type" {
  type = string
  default = "t3.micro"
}

variable "my_instances_name" {
  default = ["frontend"]
}

# variable "my_instances" {
#   type = map(string)
#   default = {
#     mongodb   = "t3.micro"
#     redis     = "t3.micro"
#     mysql     = "t3.medium"
#     rabbitmq  = "t3.medium"
#     catalogue = "t3.micro"
#     user      = "t3.micro"
#     cart      = "t3.micro"
#     redis2    = "t3.micro"
#     shipping  = "t3.micro"
#     payment   = "t3.micro"
#   }
# }

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
  default = "tcp"
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

# variable "environment" {
#   type = string
#   default = "dev"
# }

variable "zone_id" {
  default = "Z01877457DKZDKQFO78G"
}

variable "domain_name" {
  default = "fineshit.shop"
}

variable "project" {
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

# variable "common_name" {
#   default = "${var.project}-${var.environment}"
# }

variable "common_tags" {
  type = map
  default = {
    Terraform = "true"
    Project = "roboshop"
    Environment = "dev"
  }
}

variable "ingress-ports" {
  default = [80,22,3306,8080,22017]
}

