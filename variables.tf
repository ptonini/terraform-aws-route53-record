variable "name" {
  type = string
}

variable "type" {
  type    = string
  default = "A"
}

variable "records" {
  type    = list(string)
  default = []
}

variable "ttl" {
  type    = number
  default = 300
}

variable "zone_id" {}

variable "alias" {
  type = object({
    evaluate_target_health = optional(bool, false)
    name                   = string
    zone_id = string
  })
  default = null
}
