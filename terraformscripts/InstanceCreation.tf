provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "webserver" {
    ami                    =   "ami-0e07dcaca348a0e68" 
    instance_type          =   "t2.micro"
    key_name               =   "Devops-mumbai" 
    vpc_security_group_ids = ["sg-0f555559475d1ba87"]
    tags = {
        Name = "tomcatservers"
    } 
}
