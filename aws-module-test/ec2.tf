module "aws-module-test" {
    source = "../terraform-aws-ec2"
    sg_id = "sg-032c2d4bf0ec4c051"
    instance_type = "t3.small"
}


output "public_ip" {
  value = module.aws-module-test.public_ip
}
