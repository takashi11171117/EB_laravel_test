# test instance that'll launch in the same vpc
resource "aws_instance" "test-instance" {
    ami = "ami-072bfb8ae2c884cc4"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["${aws_security_group.app-prod.id}"]
    subnet_id = "${aws_subnet.main-public-1.id}"
    key_name = "${aws_key_pair.app.key_name}"
    tags = {
        Name = "temp instance"
    }
}

# sec group
resource "aws_security_group" "app-prod" {
  vpc_id = "${aws_vpc.main.id}"
  name = "app-prod"
  description = "App prod security group"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "app-prod"
  }
}