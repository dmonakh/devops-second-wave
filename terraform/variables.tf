variable "def_name" {
  default = "${var.DEF_NAME}" 
}

variable "project_id" {}

variable "region_prj" {
  default = "${var.REGION}"
}

variable "zone_prj" {
  default = "${var.ZONE}"
}

variable "sa_name" {
  default = "${var.BUCKET_NAME}"
}

variable "sa_account" {
  default = "${var.SA_ACC}"
}

# variable "domain" {
#   default = "it-sproutdevteam.fun" # Replace with your domain.
# }

variable "local_ip_range" {
  default = "10.100.0.0/28"
}

variable "gke_ip_range" {
  default = "10.200.0.0/19"
}
