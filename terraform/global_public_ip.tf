resource "google_compute_global_address" "cdn_public_address" {
  name         = "memod-cdn-public-address"
  ip_version   = "IPV4"
  address_type = "EXTERNAL"
  project      = var.project_id
}