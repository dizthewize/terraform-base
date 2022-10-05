# terraform-base

```
Add terraform.tfvars variables required
```
--------
### Add after initial Terraform is run
```
backend "s3" {
   bucket         = "eci"
   key            = "state/terraform.tfstate"
   region         = "us-west-1"
   encrypt        = true
   kms_key_id     = "alias/terraform-bucket-key"
   dynamodb_table = "eci-tfstate"
 }
```
