# variable "def_name" {
#   default = "${env.DEF_NAME}" 
# }

# variable "project_id" {}

# variable "region_prj" {
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


# variables.tf

variable "REGION" {
  type    = string
}

variable "GCP_PROJECT_ID_NONPROD1" {
  type    = string
}

variable "project_id" {
  type    = string
}

variable "region_prj" {
  type    = string
}

variable "zone_prj" {
  type    = string
}

variable "local_ip_range" {
  default = "10.100.0.0/28"
}

variable "gke_ip_range" {
  default = "10.200.0.0/19"
}
