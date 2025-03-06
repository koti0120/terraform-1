variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}
variable "instance_names" {
  type = list 
  default = ["db" , "backend" , "frontend"]
}
variable "common_tags" {
  type = map 
  default = {
    Project = "Expense"
    Environment = "Dev"
    CreatedBy = "koti"
    Terraform = "true"
  }
}