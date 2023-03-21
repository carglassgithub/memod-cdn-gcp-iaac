resource "google_compute_backend_bucket" "cdn_backend_bucket" {
  name        = "memod-cdn-backend-bucket"
  description = "Backend bucket for serving static content through CDN"
  bucket_name = var.bucket_name
  enable_cdn  = true
  project     = var.project_id
}