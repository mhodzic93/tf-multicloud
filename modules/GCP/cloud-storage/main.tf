resource "google_storage_bucket" "bucket" {
  name = var.bucket

  location      = var.location
  storage_class = var.storage_class

  website {
    main_page_suffix = var.index_document
    not_found_page   = var.error_document
  }
}

resource "google_storage_bucket_access_control" "public_access" {
  bucket = google_storage_bucket.bucket.name
  entity = var.entity
  role   = var.role
}

resource "google_storage_bucket_object" "object" {
  count = var.upload_object ? length(var.object) : 0

  bucket = google_storage_bucket.bucket.name
  name   = lookup(var.object[count.index], "name", null)
  source = lookup(var.object[count.index], "source", null)
}
