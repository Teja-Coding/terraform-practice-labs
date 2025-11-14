variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "sg_ids" {
  default = ["sg-08fb574da3e1f9a36"]
}

variable "ec2_tags" {
  default = {
     Name = "catalogue_module"
     Terraform = true
  }
}

