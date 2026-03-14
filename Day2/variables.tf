variable "region" {
  default = "ap-south-1"
}

variable "key_name" {
  default = "ritesh"
}

variable "servers" {
  default = {
    db  = "t3.small"
    api = "t3.small"
    ang = "t3.micro"
  }
}
