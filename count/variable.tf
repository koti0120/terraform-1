variable "ami_id" {
    type = string 
    default = "ami-09c813fb71547fc4f"
}
# variable "instance_type" {
#     type = string 
#     # default = "t2.mcro"
# }
variable "instance_names" {
    default = ["DB" , "FRONTEND" , "BACKEND"]
}
variable "common_tags" {
  default = {
    Project = "Expense"
    Environment = "Dev"
    CreatedBy = "koti"
  }
}