output "public-ip" {
  value = "${google_compute_address.regional-ip.address}"
}

output "public-dns" {
  value = "${google_dns_managed_zone.public-zone.dns_name}"
}