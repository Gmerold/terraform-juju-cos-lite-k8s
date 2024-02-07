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
  default     = "catalogue"
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
  default     = "ingress"
}

variable "grafana_app_name" {
  description = "Name of the Grafana application."
  type        = string
  default     = "grafana"
}

variable "grafana_catalogue_endpoint" {
  description = "Name of the Grafana app's endpoint handling Catalogue integration."
  type        = string
  default     = "catalogue"
}

variable "prometheus_app_name" {
  description = "Name of the Prometheus application."
  type        = string
  default     = "prometheus"
}

variable "prometheus_catalogue_endpoint" {
  description = "Name of the Prometheus app's endpoint handling Catalogue integration."
  type        = string
  default     = "catalogue"
}

variable "alertmanager_app_name" {
  description = "Name of the Alertmanager application."
  type        = string
  default     = "alertmanager"
}

variable "alertmanager_catalogue_endpoint" {
  description = "Name of the Alertmanager app's endpoint handling Catalogue integration."
  type        = string
  default     = "catalogue"
}
