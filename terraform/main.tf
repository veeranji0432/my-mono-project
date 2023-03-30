ource "aws_instance" "key" {
ami = "ami-0efa651876de2a5ce"
instance_type = "t2.micro"
key_name = "monolithickeypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}

