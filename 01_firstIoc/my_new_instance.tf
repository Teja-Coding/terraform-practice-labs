resource "aws_instance" "my_instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.my_sg.id ]

  tags = {
    Name = "my_instance"
    terraform = true
  }
}


resource "aws_security_group" "my_sg" {
  name   = "my_sg"
  
    egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

    ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]

  }

  tags = {
    Name = "my_sg"
    terraform = true
  }

}