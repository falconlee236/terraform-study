# 바깥에 있는 녀석과 aws랑 통신하게 해주는 역할
resource "aws_internet_gateway" "terraform-ec2-igw" {
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "${var.project_name}-${var.target_label}-IGW"
  }
}