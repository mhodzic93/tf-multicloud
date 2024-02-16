module "aws-bucket" {
  source = "./modules/AWS/s3"

  bucket = "${local.stack_name}-${var.bucket}"
  object = [
    {
      etag   = filemd5(var.index_document_path)
      key    = "index.html"
      source = var.index_document_path
    },
    {
      etag   = filemd5(var.error_document_path)
      key    = "error.html"
      source = var.error_document_path
    }
  ]
  upload_object = true
}

module "gcp-bucket" {
  source = "./modules/GCP/cloud-storage"

  bucket   = "${local.stack_name}-${var.bucket}"
  location = var.location
  object = [
    {
      name   = "index.html"
      source = var.index_document_path
    },
    {
      name   = "error.html"
      source = var.error_document_path
    }
  ]
  upload_object = true
}
