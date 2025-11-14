    module "vpc" {
    source = "git::https://github.com/Teja-Coding/my_terraform_module_creation.git//02_vpc_module_creation"
        vpc_cidr = var.vpc_cidr
        project_name = var.project_name
        environment = var.environment
        vpc_tags = var.vpc_tags

        #public subnet cidrs 
        public_subnet_cidrs = var.public_subnet_cidrs

        #private subnet cidrs
        private_subnet_cidrs = var.private_subnet_cidrs

        #database subnet cidrs
        database_subnet_cidrs = var.database_subnet_cidrs
    }

