variable "region" {
  description = "GCP region"
  default     = "europe-west1"
}

variable "project" {
  default = "wespeakcloud"
}

variable "bucket_name" {
  description = "name of the bucket"
  default     = "wespeakcloud"
}

variable "bucket_location" {
  description = "location of the bucket"
  default     = "eu"
}

variable "custom_sa" {
  description = "Email of the service account to add as viewer of the bucket"
  default     = "aymen.lamara@wescale.fr"
}
