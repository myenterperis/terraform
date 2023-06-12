resource "aws_instance" "ec2_demo" {
    ami = data.aws_ami.amazonlinus2.id
    instance_type = var.instance_type_list[0] # for list
    #instance_type = var.instance_type_map["dev"] # for map
    user_data = file("${path.module}/app.sh")
    key_name = var.key_pair
    vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id   ]
    count = 1

    tags = {
    Name = "prod-${count.index}"
    }
} 

terraform {
  backend "s3" {
    bucket = "yayatf-statefile-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb-table"
  }
}
