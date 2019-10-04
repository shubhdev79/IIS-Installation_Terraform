resource "aws_instance" "web_server-IIS-1" {
ami = "ami-034e1d78dd9d4a332"
instance_type = "t2.micro"
key_name = var.key_name
user_data = "${file("userdata.txt")}"

tags = {
Name = "web_server-IIS-1"
}

}