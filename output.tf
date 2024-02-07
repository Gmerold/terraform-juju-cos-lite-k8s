# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

output "model_name" {
  description = "Name of the Juju model used to deploy COS stack."
  value       = juju_model.cos.name
}

output "prometheus-offer-name" {
  description = "Name of the Prometheus cross-model integration offer."
  value       = juju_offer.prometheus-remote-write.name
}

output "prometheus-receive-remote-write-endpoint" {
  description = "Name of the endpoint used by Prometheus to accept data from remote-write-compatible agents."
  value = module.prometheus.receive-remote-write-endpoint
}

output "loki-offer-name" {
  description = "Name of the Loki cross-model integration offer."
  value       = juju_offer.loki-logging.name
}

output "loki-logging-endpoint" {
  description = "Name of the endpoint used by Loki to accept logs from client applications."
  value = module.loki.logging-endpoint
}
