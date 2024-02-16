#####################
# Storage Variables #
#####################

variable "bucket" {
  description = "The name of the bucket"
  type        = string
}

variable "error_document" {
  description = "The custom object to return when a requested resource is not found"
  type        = string
  default     = "error.html"
}

variable "index_document" {
  description = "Behaves as the bucket's directory index where missing objects are treated as potential directories"
  type        = string
  default     = "index.html"
}

#####################
# Object Variables #
#####################

variable "object" {
  description = "Describes the object(s) being uploaded to the bucket"
  type = list(object({
    etag   = string
    key    = string
    source = string
  }))
  default = [
    {
      etag   = ""
      key    = ""
      source = ""
    }
  ]
}

variable "upload_object" {
  description = "Whether to upload an object to a bucket"
  type        = string
  default     = false
}
