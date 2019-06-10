resource "google_dns_managed_zone" "public-zone" {
  project = "${var.event}"
  name = "${var.event}"
  dns_name = "gcp.domain.com."
  description = "DNS zone for gitlab instance"
}

resource "google_dns_record_set" "gitlab-dns" {
  project = "${var.event}"
  name = "gitlab.${google_dns_managed_zone.public-zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.public-zone.name}"

  rrdatas = ["${google_compute_address.regional-ip.address}"]
}

resource "google_dns_record_set" "registry-dns" {
  project = "${var.event}"
  name = "registry.${google_dns_managed_zone.public-zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.public-zone.name}"

  rrdatas = ["${google_compute_address.regional-ip.address}"]
}

resource "google_dns_record_set" "minio-dns" {
  project = "${var.event}"
  name = "minio.${google_dns_managed_zone.public-zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.public-zone.name}"

  rrdatas = ["${google_compute_address.regional-ip.address}"]
}