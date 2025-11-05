resource "aws_instance" "my_instance" {
  count = length(var.my_instances_name)
  ami           = var.ami_id     #"ami-09c813fb71547fc4f"
  instance_type = local.instance_type
  vpc_security_group_ids = [ aws_security_group.my_roboshop_sg.id ]
  tags = merge(
    var.common_tags,{
      Name = "${local.common_name}-local-demo"
    }
  )
}


resource "aws_security_group" "my_roboshop_sg" {
  name   = "${local.common_name}-my-roboshop-strict-sg"
  
    egress {
    from_port       = var.egress_from_port
    to_port         = var.egress_to_prot  
    protocol        = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  dynamic "ingress" {
    for_each = toset(var.ingress-ports)
  content {
    from_port       = ingress.value
    to_port         = ingress.value
    protocol        = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  }
    tags = merge(
    var.common_tags,{
      Name = "${local.common_name}-my-roboshop-strict-sg"
    }
  )
}
