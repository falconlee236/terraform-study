terraform {
  required_version = ">= 1.5.7"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0" // 5.0.x 버전이 설치된다.
    }
  }
}