resource "aws_instance" "DockerDevBox" {
    ami = "ami-0aef57767f5404a3c"
    instance_type = "t3.micro"
    key_name = "terraform_dublin"
    user_data = file("install_docker.sh")
    security_groups = ["${aws_security_group.docker_dev_box.name}"]
    tags = {
        Name = "EC2_Instance_Terraform"
    }
}