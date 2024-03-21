provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "webserver" {
    ami                    =   "ami-05a5bb48beb785bf1" 
    instance_type          =   "t2.micro"
    key_name               =   "Devkops" 
    vpc_security_group_ids = ["sg-0c6a05f35651f66f7"]
    tags = {
        Name = "tomcatservers"
    } 
}
