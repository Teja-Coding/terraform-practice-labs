data "aws_ami" "data_source" {
  owners           = ["973714476881"]
  most_recent      = true
 

 filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.data_source.id
}

output "ami_region" {
    value = data.aws_ami.data_source.region
}
