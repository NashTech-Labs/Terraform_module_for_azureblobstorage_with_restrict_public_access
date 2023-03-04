variable "resource_group" {

  type = string

  description = "Specifies the resourcegroup in which to create the storage account"

}

variable "location" {

  type = string

  description = "Specifies the region in which to create the blob"

}

variable "storagename" {

  type = string

  description = "Specifies the storage account in which to create the storage container."

}

variable "tags" {

  type = map(any)

}

variable "sku" {

  type = string

  description = "Specifies the storage account sku"

}

variable "virtual_network_subnet_ids" {

  type = string

}

variable "container_names" {

  type = list(string)

  default = [

    "container1",

    "container2",

    "container3",

  ]

}
