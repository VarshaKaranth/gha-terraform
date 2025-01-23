provider "aws" { 
  region = "us-west-2" 
}
resource "aws_s3_bucket" "ci_cd_bucket" {
    bucket = "gha-terraform"
}
resource "aws_iam_role" "github_actions_role" {
  name = "github_actions_role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Principal": {
      "Service": "ec2.amazonaws.com"
    },
    "Action": "sts:AssumeRole"
    }
  ]
}
EOF  
}

resource "aws_iam_role_policy_attachment" "attach_policy" {
    role = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
