#
# GKE Cluster
#
resource "google_container_cluster" "cluster" {
  name               = "${var.cluster_name}"
  zone               = "${var.cluster_zone}"
  min_master_version = "${var.cluster_k8s_version}"

  addons_config {
//    istio_config {
//      disabled = false
//    }

    network_policy_config {
      disabled = true
    }

    http_load_balancing {
      disabled = false
    }

    kubernetes_dashboard {
      disabled = false
    }
  }

  node_pool {
    name               = "${var.cluster_name}-np1"
    initial_node_count = "${var.initial_node_count}"

    management {
      auto_repair = true
    }

    autoscaling {
      min_node_count = "${var.autoscaling_min_node_count}"
      max_node_count = "${var.autoscaling_max_node_count}"
    }

    node_config {
      preemptible  = false
      disk_size_gb = "${var.disk_size_gb}"
      disk_type    = "${var.disk_type}"

      machine_type = "${var.machine_type}"

      oauth_scopes = [
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        "https://www.googleapis.com/auth/service.management.readonly",
        "https://www.googleapis.com/auth/servicecontrol",
        "https://www.googleapis.com/auth/trace.append",
        "https://www.googleapis.com/auth/compute",
      ]

      labels {
        env = "uat"
      }
    }
  }
}
