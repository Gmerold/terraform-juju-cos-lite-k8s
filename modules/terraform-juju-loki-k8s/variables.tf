# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

variable "model_name" {
  description = "Name of Juju model to deploy application to."
  type        = string
  default     = ""
}

variable "app_name" {
  description = "Name of the application in the Juju model"
  type        = string
  default     = "loki"
}

variable "channel" {
  description = "The channel to use when deploying a charm."
  type        = string
  default     = "stable"
}

variable "ingress_provider_app_name" {
  description = "Name of the application providing ingress."
  type        = string
  default     = "traefik"
}

variable "ingress_provider_app_endpoint" {
  description = "Name of the endpoint providing the ingress."
  type        = string
  default     = "ingress-per-unit"
}

variable "alertmanager_app_name" {
  description = "Name of the Alertmanager application."
  type        = string
  default     = "alertmanager"
}

variable "alertmanager_app_endpoint" {
  description = "Name of the Alertmanager app's endpoint handling Loki integration."
  type        = string
  default     = "alerting"
}

variable "grafana_app_name" {
  description = "Name of the Grafana application."
  type        = string
  default     = "grafana"
}

variable "grafana_source_endpoint" {
  description = "Name of the Grafana app's endpoint handling the `grafana-source` integration."
  type        = string
  default     = "grafana-source"
}

variable "grafana_dashboard_endpoint" {
  description = "Name of the Grafana app's endpoint handling the `grafana-dashboard` integration."
  type        = string
  default     = "grafana-dashboard"
}

variable "prometheus_app_name" {
  description = "Name of the Prometheus application."
  type        = string
  default     = "prometheus"
}

variable "prometheus_metrics_endpoint" {
  description = "Name of the Prometheus app's endpoint handling metrics."
  type        = string
  default     = "metrics-endpoint"
}
