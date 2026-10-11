variable "workitemtrackingprocess_pages" {
  description = <<EOT
Map of workitemtrackingprocess_pages, attributes below
Required:
    - label
    - process_id
    - work_item_type_id
Optional:
    - order
    - visible
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    label             = string
    process_id        = string
    work_item_type_id = string
    order             = optional(number)
    visible           = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_pages : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.process_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_pages : (
        length(trimspace(v.work_item_type_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_pages : (
        length(trimspace(v.label)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

