
# Input Variables
# AWS Region
variable "region" {
  description = "the aws region"
  type = string
  default = "us-east-1"
  }
  /*variable "my_ami"{
  description = "the aws ami" 
  type = string
  default = "ami-026ebd4cfe2c043b2"
  }*/

  # AWS EC2 Instance Type
 variable "instance_type"{
  description = "the aws ec2 instance type"
  type = string
  default = "t2.micro"
  }
  # AWS EC2 Instance Key Pair
  variable "key_pair"{
  description = "the aws ec2 key pair"
  type = string
  default = "Key29"
  }
  # AWS EC2 Instance Type - List
  variable "instance_type_list"{
  description = "the aws ec2 instance type"
  type = list(string)
  default = ["t2.micro","t2.medium", "t3.large"]
  }

  # AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa" = "t3.small"
    "prod" = "t3.large"
  }
}