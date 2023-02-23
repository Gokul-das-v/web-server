
backend "s3" {
     bucket         = "devops-directive-tf-state11133" # REPLACE WITH YOUR BUCKET NAME
     key            = "03-basics/import-bootstrap/terraform.tfstate"
     region         = "us-east-1"
     dynamodb_table = "terraform-state-locking"
     encrypt        = true
  }