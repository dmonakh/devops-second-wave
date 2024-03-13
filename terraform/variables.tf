variable "def_name" {
  default = "$DEF_NAME" 
}

variable "project_id" {}

variable "region_prj" {
  default = "$REGION" 
}

variable "zone_prj" {
  default = "$ZONE"
}

variable "sa_name" {
  default = "$BUCKET_NAME" 
}

variable "sa_account" {
  default = "$SA_ACC"
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
