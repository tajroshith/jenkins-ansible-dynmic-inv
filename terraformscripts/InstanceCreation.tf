provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "webserver" {
    ami                    =   "ami-05a5bb48beb785bf1" 
    instance_type          =   "t2.micro"
    key_name               =   "Devkops" 
    vpc_security_group_ids = ["sg-06773bf58a6fd7bf8"]
    tags = {
        Name = "tomcatservers"
    } 
}
