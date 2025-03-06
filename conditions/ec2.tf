resource "aws_instance" "db" {
  count = length(var.instance_names)
  ami = var.ami_id
  instance_type = var.instance_names[count.index] == "db" ? "t2.medium" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = merge(
    var.common_tags,
    {
        Name = var.instance_names[count.index]
    }
  )
}
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing to ssh protocol"
    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        from_port = 22
        to_port = 22 
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      Name = "allow_ssh"
    }
}