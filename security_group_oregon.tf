resource "aws_security_group" "ec2_oregon" {
  provider    = "aws.oregon"
  name        = "${var.name}-ec2-sg"
  vpc_id      = "${aws_vpc.vpc_oregon.id}"
  description = "${var.name} ec2 sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = "-1"
    to_port     = "-1"
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
