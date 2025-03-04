resource "aws_instance" "db" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = var.sg_ids

    tags = var.db_tags
}

resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description
    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.sg_cidr_blocks
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1" #here -1 means allow all protocals
        cidr_blocks = var.sg_cidr_blocks
    }
    tags = {
      Name = "allow_ssh"
    }
}