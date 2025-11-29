variable "ami_id" {
  type        = string
  default     = "ami-0f5ee92e2d63afc18"
  description = "terraform variables"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
    }
variable "tags"{
    type = map
    default={
        Name = "Backend"
        Project = "Expance"
        Env = "Dev"
    
    }
}

variable "sg_name" {

    default = "allow_ssh"

}

variable "sg_description" {
    default = "allow port number 22 access"
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port"{
    type = number
    default = 22

}

variable "protocol"{
    default = "TCP"
}

variable "ingress_cidr"{
    type = list(string)
    default =["0.0.0../0"]
}
