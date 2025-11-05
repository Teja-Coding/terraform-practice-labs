resource "aws_instance" "my_instance" {
  for_each = var.my_instances
  ami           = var.ami_id     #"ami-09c813fb71547fc4f"
  instance_type = each.value
  vpc_security_group_ids = [ aws_security_group.my_sg.id ]
  tags = {
    Name = each.key
    Terraform = true
  }
}


resource "aws_security_group" "my_sg" {
  name   = var.security_group_name
  
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