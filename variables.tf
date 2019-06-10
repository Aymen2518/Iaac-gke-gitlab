#
# Variables
#
variable "project" {
  default = "wespeakcloud"
}

variable "region" {
  default = "europe-west3"
}

variable "cluster_name" {
  default = "wespeakcloud"
}

variable "cluster_zone" {
  default = "europe-west3-a"
}

variable "cluster_k8s_version" {
  default = "1.12.7-gke.10"
}

variable "initial_node_count" {
  default = 1
}

variable "autoscaling_min_node_count" {
  default = 1
}

variable "autoscaling_max_node_count" {
  default = 4
}

variable "disk_size_gb" {
  default = 100
}

variable "disk_type" {
  default = "pd-standard"
}

variable "machine_type" {
  default = "n1-standard-4"
}