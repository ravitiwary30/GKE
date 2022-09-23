/*
Copyright 2022 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/

data "google_compute_subnetwork" "gke_subnetwork" {
  provider = google

  count   = var.add_cluster_firewall_rules ? 1 : 0
  name    = var.subnetwork
  region  = local.region
  project = local.network_project_id
}
