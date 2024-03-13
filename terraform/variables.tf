# variable "def_name" {
#   default = "${env.DEF_NAME}" 
# }

# variable "project_id" {}

# enviable "region_prj" {
#   default = "${env.REGION}"
# }

# variable "zone_prj" {
#   default = "${env.ZONE}"
# }

# variable "sa_name" {
#   default = "${env.BUCKET_NAME}"
# }

# variable "sa_account" {
#   default = "${env.SA_ACC}"
# }

# variable "domain" {
#   default = "it-sproutdevteam.fun" # Replace with your domain.
# }

variable "local_ip_range" {
  default = "10.100.0.0/28"
}

variable "gke_ip_range" {
  default = "10.200.0.0/19"
}
