# Regional static adress suitable for instances, regional load balancer, vpn endpoint
resource "google_compute_address" "regional-ip" {
  name    = "regional-ip"
  project = "${var.event}"
}

