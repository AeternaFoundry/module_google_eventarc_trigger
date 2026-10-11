variable "eventarc_triggers" {
  description = <<EOT
Map of eventarc_triggers, attributes below
Required:
    - location
    - name
    - destination (block):
        - cloud_run_service (optional, block):
            - path (optional)
            - region (optional)
            - service (required)
        - gke (optional, block):
            - cluster (required)
            - location (required)
            - namespace (required)
            - path (optional)
            - service (required)
        - http_endpoint (optional, block):
            - uri (required)
        - network_config (optional, block):
            - network_attachment (required)
        - workflow (optional)
    - matching_criteria (block):
        - attribute (required)
        - operator (optional)
        - value (required)
Optional:
    - channel
    - deletion_policy
    - event_data_content_type
    - labels
    - project
    - service_account
    - retry_policy (block):
        - max_attempts (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - transport (block):
        - pubsub (optional, block):
            - topic (optional)
EOT

  type = map(object({
    location                = string
    name                    = string
    channel                 = optional(string)
    deletion_policy         = optional(string)
    event_data_content_type = optional(string)
    labels                  = optional(map(string))
    project                 = optional(string)
    service_account         = optional(string)
    destination = object({
      cloud_run_service = optional(object({
        path    = optional(string)
        region  = optional(string)
        service = string
      }))
      gke = optional(object({
        cluster   = string
        location  = string
        namespace = string
        path      = optional(string)
        service   = string
      }))
      http_endpoint = optional(object({
        uri = string
      }))
      network_config = optional(object({
        network_attachment = string
      }))
      workflow = optional(string)
    })
    matching_criteria = list(object({
      attribute = string
      operator  = optional(string)
      value     = string
    }))
    retry_policy = optional(object({
      max_attempts = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    transport = optional(object({
      pubsub = optional(object({
        topic = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.eventarc_triggers : (
        length(v.matching_criteria) >= 1
      )
    ])
    error_message = "Each matching_criteria list must contain at least 1 items"
  }
}

