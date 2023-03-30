resource "aws_security_group" "demo-sg" {
name = "sec-grp"
description = "it allows ssh and all trafic"
ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_block = ["0.0.0.0/0"]
}
egress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_block = ["0.0.0.0/0"]
}
ingress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_block = ["0.0.0.0/0"]
}
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_block = ["0.0.0.0/0"]
}
}
