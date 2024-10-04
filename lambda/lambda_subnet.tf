resource "aws_subnet" "example_subnet" {
    vpc_id = aws_vpc.example_vpc.id
    cidr_block = "10.0.0.0/24"
}