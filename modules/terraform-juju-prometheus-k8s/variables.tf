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
  default     = "prometheus"
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

variable "ingress_provider_metrics_endpoint" {
  description = "Name of the ingress app's endpoint providing metrics."
  type        = string
  default     = "metrics-endpoint"
}

variable "alertmanager_app_name" {
  description = "Name of the Alertmanager application."
  type        = string
  default     = "alertmanager"
}

variable "alertmanager_alerts_endpoint" {
  description = "Name of the Alertmanager app's endpoint handling Loki integration."
  type        = string
  default     = "alerting"
}

variable "alertmanager_metrics_endpoint" {
  description = "Name of the Alertmanager app's endpoint providing metrics."
  type        = string
  default     = "self-metrics-endpoint"
}

variable "catalogue_app_name" {
  description = "Name of the Catalogue application."
  type        = string
  default     = "catalogue"
}

variable "catalogue_endpoint" {
  description = "Name of the endpoint providing the catalogue for the alertmanager-k8s."
  type        = string
  default     = "catalogue"
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

variable "grafana_metrics_endpoint" {
  description = "Name of the Grafana app's endpoint providing metrics."
  type        = string
  default     = "metrics-endpoint"
}

variable "loki_app_name" {
  description = "Name of the Loki application."
  type        = string
  default     = "loki"
}

variable "loki_metrics_endpoint" {
  description = "Name of the Loki app's endpoint providing metrics."
  type        = string
  default     = "metrics-endpoint"
}

