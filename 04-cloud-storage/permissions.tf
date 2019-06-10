resource "google_storage_bucket_iam_member" "member" {
  bucket = "${google_storage_bucket.main.name}"
  role   = "roles/storage.objectViewer"
  member = "user:${var.custom_sa}"
}
