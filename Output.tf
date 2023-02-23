output "Ec2-instance-Ip" {
    value = aws_instance.ec2-instance.public_ip
  
}

output "Vpc-cidr-Block" {
    value = aws_vpc.my-vpc.cidr_block
  
}