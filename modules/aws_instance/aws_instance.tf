resource "aws_instance" "inst" {
  count = var.instance
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet

  tags = {
    "Name" = "Bhavan-${count.index}"
  }
}