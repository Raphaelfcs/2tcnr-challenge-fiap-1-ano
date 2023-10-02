terraform {
  backend "s3" {
    bucket = "cloudit-fiap-iac"
    key    = "samdbox/iac/fiap/raphael/peering/peering.tfsate"
    region = "us-east-1"
  }
}