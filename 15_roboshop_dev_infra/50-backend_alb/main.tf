resource "aws_lb" "backend_alb" {
  name               = "${local.common_name_suffix}-backend-alb"  #roboshop-dev-backend-alb
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  #it should be private subnet ids
  subnets            = local.private_subnet_ids

  enable_deletion_protection = false  #prevents accidental deletion from ui


  tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name_suffix}-backend-alb"
    }
  )
}

#back alb listening on port number 80

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.backend_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Hi, i am from backend alb http"
      status_code  = "200"
    }
  }
}