variable "def_name" {}
variable "project_id" {}
variable "region_prj" {}
variable "zone_prj" {}
variable "sa_name" {}
variable "sa_account" {}

# variable "domain" {
#   default = "it-sproutdevteam.fun" # Replace with your domain.
# }


variable "local_ip_range" {
  default = "10.100.0.0/28"
}

variable "gke_ip_range" {
  default = "10.200.0.0/19"
}
