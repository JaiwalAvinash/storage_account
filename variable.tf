variable "rg" {
    type = map(any)
    default = {
      rg111 = "central india"
      rg222 =  "west europe"
    }
}

variable "storage_account" {
    type = map(any)
    default = {
      storage1 ={
        resource_group_name = "rg111"
        name = "avinashstorageaccount1"
        location = "central india"
      }
      storage2 ={
        resource_group_name = "rg222"
        name = "avinashstorageaccount2"
        location = "west europe"
      }
}
}
