    module "sg" {
    source = "git::https://github.com/Teja-Coding/my_terraform_module_creation.git//03_terraform_aws_sg"
        count = length(var.sg_names)
        project_name = var.project_name 
        environment = var.environment
        sg_name = var.sg_names[count.index]
        sg_description  =  "Created for  mongodb"
        vpc_id = local.vpc_id
    }

