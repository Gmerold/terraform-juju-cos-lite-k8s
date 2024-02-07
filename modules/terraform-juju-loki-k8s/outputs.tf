# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

output "app_name" {
  description = "Name of the deployed application."
  value       = juju_application.loki.name
}

output "ingress-endpoint" {
  description = "Name of the endpoint used by Loki for the ingress configuration."
  value       = "ingress"
}

output "alertmanager-endpoint" {
  description = "Name of the endpoint used by Loki to send out the alerts."
  value       = "alertmanager"
}

output "metrics-endpoint" {
  description = "Exposes the Prometheus metrics endpoint providing telemetry about the Loki instance."
  value       = "metrics-endpoint"
}

output "grafana-dashboard-endpoint" {
  description = "Forwards the built-in Grafana dashboard(s) for monitoring Loki."
  value       = "grafana-dashboard"
}

output "grafana-source-endpoint" {
  description = "Name of the endpoint used by Loki to create a datasource in Grafana."
  value       = "grafana-source"
}

output "logging-endpoint" {
  description = "Name of the endpoint used by Loki to accept logs from client applications."
  value       = "logging"
}