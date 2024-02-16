#####################
# Storage Variables #
#####################

variable "bucket" {
  description = "The name of the bucket"
  type        = string
}

variable "entity" {
  description = "The entity holding the permission"
  type        = string
  default     = "allUsers"
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

variable "location" {
  description = "The GCS location"
  type        = string
}

variable "role" {
  description = "The access permission for the entity"
  type        = string
  default     = "READER"
}

variable "storage_class" {
  description = "The Storage Class of the bucket"
  type        = string
  default     = "STANDARD"
}

#####################
# Object Variables #
#####################

variable "object" {
  description = "Describes the object(s) being uploaded to the bucket"
  type = list(object({
    name   = string
    source = string
  }))
  default = [
    {
      name   = ""
      source = ""
    }
  ]
}

variable "upload_object" {
  description = "Whether to upload an object to a bucket"
  type        = string
  default     = false
}
