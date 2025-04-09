variable "app_name" {
  description = "Name of the app."
  type        = string
}
variable "region" {
  description = "AWS region to deploy the network to."
  type        = string
}
variable "tf-profile" {
  description = "Terraform provider profile name"
  type        = string
}
