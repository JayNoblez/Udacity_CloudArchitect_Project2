# Designates a cloud provider, region, and credentials
provider "aws" {
  shared_credentials_file = "/Users/johna/.aws/credentials"
  region                  = "us-east-1"
}

# Provisioned 4 AWS t2.micro EC2 instances named Udacity T2
#resource "aws_instance" "Udacity_T2" {
# ami           = "ami-0d57c0143330e1fa7"
#count         = "4"
#instance_type = "t2.micro"
#subnet_id     = "subnet-34302b53"
#tags = { Name = "Udacity T2"
#}
#}

# Provisioned 2 AWS m4.large EC2 instances named Udacity m4
#resource "aws_instance" "Udacity_M4" {
# ami           = "ami-0d57c0143330e1fa7"
#count         = "2"
#instance_type = "m4.large"
#subnet_id     = "subnet-3da6471c"
#tags = { Name = "Udacity M4"
#}
#}
