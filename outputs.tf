output "eventarc_triggers_id" {
  description = "Map of id values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no id are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventarc_triggers_channel" {
  description = "Map of channel values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no channel are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.channel if v.channel != null && length(v.channel) > 0 }
}
output "eventarc_triggers_conditions" {
  description = "Map of conditions values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no conditions are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "eventarc_triggers_create_time" {
  description = "Map of create_time values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no create_time are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "eventarc_triggers_deletion_policy" {
  description = "Map of deletion_policy values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no deletion_policy are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "eventarc_triggers_destination" {
  description = "Map of destination values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no destination are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => one(v.destination) if v.destination != null && length(v.destination) > 0 }
}
output "eventarc_triggers_effective_labels" {
  description = "Map of effective_labels values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no effective_labels are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "eventarc_triggers_etag" {
  description = "Map of etag values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no etag are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "eventarc_triggers_event_data_content_type" {
  description = "Map of event_data_content_type values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no event_data_content_type are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.event_data_content_type if v.event_data_content_type != null && length(v.event_data_content_type) > 0 }
}
output "eventarc_triggers_labels" {
  description = "Map of labels values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no labels are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "eventarc_triggers_location" {
  description = "Map of location values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no location are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.location if v.location != null && length(v.location) > 0 }
}
output "eventarc_triggers_matching_criteria" {
  description = "Map of matching_criteria values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no matching_criteria are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.matching_criteria if v.matching_criteria != null && length(v.matching_criteria) > 0 }
}
output "eventarc_triggers_name" {
  description = "Map of name values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no name are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eventarc_triggers_project" {
  description = "Map of project values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no project are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "eventarc_triggers_retry_policy" {
  description = "Map of retry_policy values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no retry_policy are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => one(v.retry_policy) if v.retry_policy != null && length(v.retry_policy) > 0 }
}
output "eventarc_triggers_service_account" {
  description = "Map of service_account values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no service_account are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "eventarc_triggers_terraform_labels" {
  description = "Map of terraform_labels values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no terraform_labels are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "eventarc_triggers_transport" {
  description = "Map of transport values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no transport are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => one(v.transport) if v.transport != null && length(v.transport) > 0 }
}
output "eventarc_triggers_uid" {
  description = "Map of uid values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no uid are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "eventarc_triggers_update_time" {
  description = "Map of update_time values across all eventarc_triggers, keyed the same as var.eventarc_triggers except keys with no update_time are omitted"
  value       = { for k, v in google_eventarc_trigger.eventarc_triggers : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

