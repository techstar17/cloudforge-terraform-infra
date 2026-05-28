// terraform {
//   backend "s3" {
//     bucket         = "cloudforge-tfstate-bucket-2026"
//     key            = "terraform/state.tfstate"
//     region         = "us-east-1"
//     dynamodb_table = "cloudforge-tf-locks"
//     encrypt        = true
//   }
// }