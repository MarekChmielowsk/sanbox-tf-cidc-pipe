variable "bucket_name" {
  description = "Name of the bucket. Must be unique."
  type        = string
  default     = "test-bucket-random-260185-23"
}

variable "bucket_location" {
  description = "Region for the bucket"
  type        = string
}
