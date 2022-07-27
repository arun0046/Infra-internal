terraform {
  backend "s3" {

    #This will allow you to download and view your state file.
    acl     = "bucket-owner-full-control"

    #This is the bucket where to store your state file.
    bucket  = "arun-terraform"
    
    #This ensures the state file is stored encrypted at rest in S3.
    encrypt = true

    #This is the region of your S3 Bucket.
    region  = "ap-south-1"

    #This will be the state file's file name.
    key     = "tf-state-files/ec2"
    
  }
}
