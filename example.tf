/*
 * Assume we'll provide environment vars:
 * AWS_ACCESS_KEY_ID
 * AWS_SECRET_ACCESS_KEY
 * AWS_DEFAULT_REGION
 */
provider "aws" {
}

# Create a VPC
resource "aws_vpc" "example_vpc" {
    cidr_block = "10.0.0.0/16"

    tags {
        Name = "example infrastructure"
        Environment = "Example"
    }
}

# Create an S3 bucket to store things
resource "aws_s3_bucket" "example_bucket" {
    bucket = "example-bucket"
    acl = "private"

    tags {
        Name = "example infrastructure"
        Environment = "Example"
    }
}
