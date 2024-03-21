variable "rs-group-name" {}
variable "location" {}
variable "vnet-name" {}
variable "address-vn" {}
variable "subnet" {}
variable "subnet-address" {}
variable "sg-name" {}
variable "vm-name" {}
variable "username" {
    sensitive = true
}
variable "vm-size" {}
variable "ip-name" {}
variable "nic-name" {}