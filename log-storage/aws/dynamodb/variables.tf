variable "source_account_id" {
  default = "913128560467"
}

variable "external_id" {
  description = "An external ID provided by env0 for assuming the roles to read and write from and to log table"
}

variable "agent_key" {
  description = "A unique key for this remote agent provided by env0"
}
