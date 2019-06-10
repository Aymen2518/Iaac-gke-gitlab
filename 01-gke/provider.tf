#
# Google Cloud Platform
#
provider "google" {
  credentials = "${file("~/.gcp/WeSpeakCloud-1bdef833834c.json")}"
  project = "${var.project}"
  region  = "${var.region}"
  version = "2.0.0"
}