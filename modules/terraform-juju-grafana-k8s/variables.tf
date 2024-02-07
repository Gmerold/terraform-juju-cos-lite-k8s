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
  default     = "grafana"
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

variable "ingress_endpoint" {
  description = "Name of the endpoint providing the ingress."
  type        = string
  default     = "traefik-route"
}

variable "alertmanager_app_name" {
  description = "Name of the Alertmanager application."
  type        = string
  default     = "alertmanager"
}

variable "alertmanager_grafana_source_provider_app_endpoint" {
  description = "Name of the Alertmanager app's enpoint handling the `grafana-source` integration."
  type        = string
  default     = "grafana-source"
}

variable "alertmanager_grafana_dashboard_provider_app_endpoint" {
  description = "Name of the Alertmanager app's enpoint handling the `grafana-dashboard` integration."
  type        = string
  default     = "grafana-dashboard"
}

variable "loki_app_name" {
  description = "Name of the Loki application."
  type        = string
  default     = "loki"
}

variable "loki_grafana_source_provider_app_endpoint" {
  description = "Name of the Loki app's enpoint handling the `grafana-source` integration."
  type        = string
  default     = "grafana-source"
}

variable "loki_grafana_dashboard_provider_app_endpoint" {
  description = "Name of the Loki app's enpoint handling the `grafana-dashboard` integration."
  type        = string
  default     = "grafana-dashboard"
}

variable "prometheus_app_name" {
  description = "Name of the Prometheus application."
  type        = string
  default     = "prometheus"
}

variable "prometheus_grafana_source_provider_app_endpoint" {
  description = "Name of the Prometheus app's enpoint handling the `grafana-source` integration."
  type        = string
  default     = "grafana-source"
}

variable "prometheus_grafana_dashboard_provider_app_endpoint" {
  description = "Name of the Prometheus app's enpoint handling the `grafana-dashboard` integration."
  type        = string
  default     = "grafana-dashboard"
}

variable "prometheus_metrics_endpoint" {
  description = "Name of the Prometheus app's endpoint handling metrics."
  type        = string
  default     = "metrics-endpoint"
}

variable "catalogue_app_name" {
  description = "Name of the application providing catalogue for the alertmanager-k8s."
  type        = string
  default     = "catalogue"
}

variable "catalogue_provider_app_endpoint" {
  description = "Name of the endpoint providing the catalogue for the alertmanager-k8s."
  type        = string
  default     = "catalogue"
}
