resource "aws_instance" "my_instance" {
  count = length(var.my_instances_name)
  ami           = var.ami_id     #"ami-09c813fb71547fc4f"
  instance_type = local.instance_type
  vpc_security_group_ids = [ aws_security_group.my_sg.id ]
  tags = merge(
    var.common_tags,{
      Name = "${local.common_name}-local-demo"
    }
  )
}


resource "aws_security_group" "my_sg" {
  name   = "${local.common_name}-my_sg"
  
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
    tags = merge(
    var.common_tags,{
      Name = "${local.common_name}-my_sg"
    }
  )
}
