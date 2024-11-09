terraform {
/*
  cloud {
   organization = "organization-name"

   workspaces {
     name = "learn-terraform"
   }
  }
*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.14.0"
}

provider "aws" {
  region = var.region_id
}


resource "aws_vpc" "haidar" {
  cidr_block = "10.0.0.0/16"
}

variable "region_id" {
  
}
