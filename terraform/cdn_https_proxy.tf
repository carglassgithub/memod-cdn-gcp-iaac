resource "google_compute_target_https_proxy" "cdn_https_proxy" {
  name             = "memod-cdn-https-proxy"
  url_map          = google_compute_url_map.cdn_url_map.self_link
  ssl_certificates = [google_compute_managed_ssl_certificate.cdn_certificate.self_link]
  project          = var.project_id
}