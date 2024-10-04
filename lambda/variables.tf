variable "region" {
  description = "aws region"
  type = string
  default = "ap-northeast-2"
}

variable "project_name" {
  description = "project name"
  type = string
  default = "lambda_example_ec2"
}

variable "target_label" {
  description = "dev/stage/prod"
  type = string
  default = "dev"
}

variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
  default = "172.110.0.0/16"
}

variable "azs" {
    description = "A list of availability zones names or ids in the region"
    type = list(string)
    default = ["ap-northeast-2a"]
  
}

variable "public_cidr" {
  description = "Public Subnet CIDR"
  type = list(string)
  default = ["172.110.0.0/24"]
}

variable "ec2_instance_spec" {
  description = "EC2 Spec Information"
  type = string
  default = "t2.micro"
}

#인스턴스 이름 변수
variable "instance_name" {
  description = "EC2 Name"
  type = string
  default = "sangylee"
}

# I AM user
variable "user_names" {
  description = "Create I AM users with these names"
  type = list(string)
  default = [ "sangylee1", "sangylee2", "sangylee3" ]
}