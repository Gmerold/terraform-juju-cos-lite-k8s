# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

output "app_name" {
  description = "Name of the deployed application."
  value       = juju_application.alertmanager.name
}

output "ingress-endpoint" {
  description = "Name of the endpoint used by Alertmanager for the ingress configuration."
  value       = "ingress"
}

output "catalogue-endpoint" {
  description = "Name of the endpoint used by Alertmanager for the Catalogue integration."
  value       = "catalogue"
}

output "alerting-endpoint" {
  description = "Name of the endpoint used by Alertmanager for handling alerts sent by client applications."
  value       = "alerting"
}

output "metrics-endpoint" {
  description = "Exposes the Prometheus metrics endpoint providing telemetry about the Alertmanager instance."
  value       = "self-metrics-endpoint"
}

output "grafana-dashboard-endpoint" {
  description = "Forwards the built-in Grafana dashboard(s) for monitoring Alertmanager."
  value       = "grafana-dashboard"
}

output "grafana-source-endpoint" {
  description = "Name of the endpoint used by Alertmanager to create a datasource in Grafana."
  value       = "grafana-source"
}
