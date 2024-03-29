resource "google_compute_subnetwork" "vpc_subnetwork" {
  name                     = "${var.def_name}-subnetwork-${var.zone_prj}"
  ip_cidr_range            = var.local_ip_range
  region                   = var.region_prj
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true
}

resource "google_compute_network" "vpc_network" {
  name                    = "${var.def_name}-network"
  auto_create_subnetworks = false
}
resource "google_container_cluster" "k8s_cluster" {
  name               = "${var.def_name}-clusterk8s"
  location           = var.region_prj
  initial_node_count = 1

  network            = google_compute_network.vpc_network.name
  subnetwork         = google_compute_subnetwork.vpc_subnetwork.name
  enable_legacy_abac = false
  cluster_ipv4_cidr  = var.gke_ip_range

  node_config {
    preemptible     = true
    machine_type    = "e2-medium"
    service_account = var.sa_account
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    disk_type    = "pd-standard"
    disk_size_gb = 50
  }

  addons_config {
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  cluster_autoscaling {
    auto_provisioning_defaults {
      disk_size = 30
      disk_type = "pd-standard"
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
      ]
      service_account = var.sa_account
    }
  }

  depends_on = [
    google_compute_network.vpc_network,
    google_compute_subnetwork.vpc_subnetwork
  ]
}
# provider "dns" {
#   update {
#     key_name = var.domain
#   }
# }
output "region" {
  value       = var.region_prj
  description = "GCloud Region"
}

output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.k8s_cluster.name
  description = "GKE Cluster Name"
}


output "kubernetes_cluster_endpoint" {
  value       = google_container_cluster.k8s_cluster.endpoint
  description = "GKE Cluster Host"
}