resource "aws_instance" "this" {
  count = length(var.my_instances_name)
  ami           = var.ami_id     #"ami-09c813fb71547fc4f"
  instance_type = var.environment == "dev"? "t3.medium":"t3.micro"    #"t3.micro"
  vpc_security_group_ids = [ aws_security_group.my_sg.id ]
  tags = {
    Name = var.my_instances_name[count.index]
    Terraform = true
  }
}


resource "aws_security_group" "my_sg" {
  name   = "my_sg"
  
    egress {
    from_port       = var.egress_from_port
    to_port         = var.egress_to_prot  
    protocol        = var.protocol
    cidr_blocks = var.cidr_blocks
  }

    ingress {
    from_port       = var.ingress_from_port
    to_port         = var.ingress_to_port
    protocol        = var.protocol
    cidr_blocks = var.cidr_blocks

  }
  tags = var.ec2_sg_tags
}