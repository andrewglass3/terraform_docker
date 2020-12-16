resource "aws_security_group" "docker_dev_box" {
    name = "docker-dev-sg"

    ingress {
        cidr_blocks = [
            "0.0.0.0/0"
        ]

    from_port = 22
        to_port = 22
        protocol = "tcp"
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}