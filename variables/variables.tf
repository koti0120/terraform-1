variable "ami_id" {
  type = string
  description = "RHEL-9 ami id"
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  type = string 
  default = "t2.micro"
}
variable "sg_ids" {
  type = list(string)
  default = ["aws_security_group.allow_ssh.id"]
}
variable "db_tags" {
  type = map 
  default = {
    Name = "DB-SERVER"
    CreatedBy = "Koti"
    Environment = "DEV"
    Project = "Expense"
  }
}
variable "sg_name" {
  type = string
  default = "allow_ssh"
}
variable "sg_description" {
  type = string 
  default = "allowing ssh protocal"
}
variable "sg_cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}
