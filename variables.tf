####################
# Global Variables #
####################

variable "environment" {
  description = "The name of the environment"
}

variable "project" {
  description = "The name of the project"
}

####################
# Bucket Variables #
####################

variable "bucket" {}

variable "error_document_path" {
  default = "./files/error.html"
}

variable "index_document_path" {
  default = "./files/index.html"
}

variable "location" {}
