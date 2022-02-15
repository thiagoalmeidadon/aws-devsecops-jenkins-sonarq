resource "aws_instance" "challenge_server" {
  ami = var.amis["us-east-1"]
  provider = aws.us-east-1
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = ["${aws_security_group.ssh.id}", "${aws_security_group.jenkins-sg.id}"]
  tags = {
    Name = "Challenge_server"
  }
}