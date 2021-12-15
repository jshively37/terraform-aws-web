data "aws_ami" "webserver" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.packer_name]
  }
  owners = ["self"]
}

resource "aws_instance" "webserver" {
  ami                         = data.aws_ami.webserver.id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.sg_web_server.id]
  subnet_id                   = aws_subnet.public_subnet.id
  key_name                    = var.cert_name
  associate_public_ip_address = true
  tags = {
    Name = "${var.user}-${var.business_unit}"
  }
}
