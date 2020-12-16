resource "aws_spot_instance_request" "SpotDockerDevBox" {
    ami = "ami-0aef57767f5404a3c"
    instance_type = "c5.4xlarge"
    spot_price = "0.40"
    key_name = "terraform_dublin"
    user_data = file("install_docker.sh")
    security_groups = [aws_security_group.spot_docker_dev_box.name]
    tags = {
        Name = "EC2_Instance_Terraform"
    }
}