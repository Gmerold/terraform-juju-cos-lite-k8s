# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

output "app_name" {
  description = "Name of the deployed application."
  value       = juju_application.grafana.name
}

output "ingress-endpoint" {
  description = "Name of the endpoint used by Grafana for the ingress configuration."
  value       = "ingress"
}

output "catalogue-endpoint" {
  description = "Name of the endpoint used by Grafana for the Catalogue integration."
  value       = "catalogue"
}

output "grafana-dashboard-endpoint" {
  description = "Name of the endpoint used by Grafana for handling dashboards sent by client applications."
  value       = "grafana-dashboard"
}

output "grafana-source-endpoint" {
  description = "Name of the endpoint used by Grafana for accepting data source configurations sent by client applications."
  value       = "grafana-source"
}

output "metrics-endpoint" {
  description = "Exposes the Prometheus metrics endpoint providing telemetry about the Grafana instance."
  value       = "metrics-endpoint"
}
