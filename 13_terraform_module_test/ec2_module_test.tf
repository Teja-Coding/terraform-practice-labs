    module "catalogue" {
     source = "../../my_terraform_module_creation/01_module_creation"
     ami_id = var.ami_id
     instance_type = var.instance_type
     sg_ids = var.sg_ids
     tags = var.ec2_tags
    }

    output "pub_ip" {
      value = module.catalogue.public_ip
    }

    output "pri_ip" {
      value = module.catalogue.private_ip
    }

    output "instance_id" {
      value = module.catalogue.instance_id
    }