resource "google_compute_global_address" "cdn_public_address" {
  name         = "memod-cdn-public-address"
  ip_version   = "IPV4"
  address_type = "EXTERNAL"
  project      = var.project_id
}

# ------------------------------------------------------------------------------
# CREATE A GLOBAL FORWARDING RULE
# ------------------------------------------------------------------------------

resource "google_compute_global_forwarding_rule" "cdn_global_forwarding_rule_https" {
  name       = "memod-cdn-global-forwarding-https-rule"
  target     = google_compute_target_https_proxy.cdn_https_proxy.id
  ip_address = google_compute_global_address.cdn_public_address.id
  port_range = "443"
  project    = var.project_id
  ip_protocol = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
}