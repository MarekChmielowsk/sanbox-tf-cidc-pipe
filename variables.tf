# Should be defined in terraform.tfvars
variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
}

# us-central1 is chepeast region
variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-c"
}
