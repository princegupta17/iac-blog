terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.33.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.0.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.24.0"
    }
  }

  backend "s3" {
    bucket = "blogapp23"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }

  required_version = "~> 1.9.5"
}