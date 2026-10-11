resource "google_eventarc_trigger" "eventarc_triggers" {
  for_each = var.eventarc_triggers

  location                = each.value.location
  name                    = each.value.name
  channel                 = each.value.channel
  deletion_policy         = each.value.deletion_policy
  event_data_content_type = each.value.event_data_content_type
  labels                  = each.value.labels
  project                 = each.value.project
  service_account         = each.value.service_account

  destination {
    dynamic "cloud_run_service" {
      for_each = each.value.destination.cloud_run_service != null ? [each.value.destination.cloud_run_service] : []
      content {
        path    = cloud_run_service.value.path
        region  = cloud_run_service.value.region
        service = cloud_run_service.value.service
      }
    }
    dynamic "gke" {
      for_each = each.value.destination.gke != null ? [each.value.destination.gke] : []
      content {
        cluster   = gke.value.cluster
        location  = gke.value.location
        namespace = gke.value.namespace
        path      = gke.value.path
        service   = gke.value.service
      }
    }
    dynamic "http_endpoint" {
      for_each = each.value.destination.http_endpoint != null ? [each.value.destination.http_endpoint] : []
      content {
        uri = http_endpoint.value.uri
      }
    }
    dynamic "network_config" {
      for_each = each.value.destination.network_config != null ? [each.value.destination.network_config] : []
      content {
        network_attachment = network_config.value.network_attachment
      }
    }
    workflow = each.value.destination.workflow
  }

  dynamic "matching_criteria" {
    for_each = each.value.matching_criteria
    content {
      attribute = matching_criteria.value.attribute
      operator  = matching_criteria.value.operator
      value     = matching_criteria.value.value
    }
  }

  dynamic "retry_policy" {
    for_each = each.value.retry_policy != null ? [each.value.retry_policy] : []
    content {
      max_attempts = retry_policy.value.max_attempts
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "transport" {
    for_each = each.value.transport != null ? [each.value.transport] : []
    content {
      dynamic "pubsub" {
        for_each = transport.value.pubsub != null ? [transport.value.pubsub] : []
        content {
          topic = pubsub.value.topic
        }
      }
    }
  }
}

