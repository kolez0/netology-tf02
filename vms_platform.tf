### vm_web_* vars

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM image family"
}

# variable "vm_web_name" {
#   type        = string
#   default     = "netology-develop-platform-web"
#   description = "VM  name"
# }

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM platform ID"
}

# variable "vm_web_cores" {
#   type        = number
#   default     = 2
#   description = "VM CPU cores"
# }

# variable "vm_web_memory" {
#   type        = number
#   default     = 1
#   description = "VM memory"
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = 5
#   description = "VM core_fraction"
# }

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "VM preemptible flag"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "VM enable NAT flag"
}

# variable "vm_web_serial_port_enable" {
#   type        = number
#   default     = 1
#   description = "VM enable serial port option"
# }

### vm_db_* vars

variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM image family"
}

# variable "vm_db_name" {
#   type        = string
#   default     = "netology-develop-platform-db"
#   description = "VM  name"
# }

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM platform ID"
}

# variable "vm_db_cores" {
#   type        = number
#   default     = 2
#   description = "VM CPU cores"
# }

# variable "vm_db_memory" {
#   type        = number
#   default     = 2
#   description = "VM memory"
# }

# variable "vm_db_core_fraction" {
#   type        = number
#   default     = 20
#   description = "VM core_fraction"
# }

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "VM preemptible flag"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "VM enable NAT flag"
}

# variable "vm_db_serial_port_enable" {
#   type        = number
#   default     = 1
#   description = "VM enable serial port option"
# }

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "DB VM availability zone"
}

variable "vm_db_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "DB VM subnet"
}


### vpc_db_* vars

variable "vpc_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "DB VPC name"
}


### map переменные

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
}

variable "metadata" {
  type        = map(string)
}


### задание 8

variable "test" {
  type  = list(map(list(string)))
}
