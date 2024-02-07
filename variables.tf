# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

variable "model-name" {
  description = "Name of the Juju model to deploy applications to."
  type        = string
  default     = "cos"
}

# Alertmanager
variable "alertmanager_app_name" {
  description = "Name of the Alertmanager application."
  type        = string
  default     = "alertmanager"
}
variable "alertmanager_channel" {
  description = "The channel to use when deploying Alertmanager charm."
  type        = string
  default     = "stable"
}

# Catalogue
variable "catalogue_app_name" {
  description = "Name of the Catalogue application."
  type        = string
  default     = "catalogue"
}
variable "catalogue_channel" {
  description = "The channel to use when deploying Catalogue charm."
  type        = string
  default     = "stable"
}

# Grafana
variable "grafana_app_name" {
  description = "Name of the Grafana application."
  type        = string
  default     = "grafana"
}
variable "grafana_channel" {
  description = "The channel to use when deploying Grafana charm."
  type        = string
  default     = "stable"
}

# Loki
variable "loki_app_name" {
  description = "Name of the Loki application."
  type        = string
  default     = "loki"
}
variable "loki_channel" {
  description = "The channel to use when deploying Loki charm."
  type        = string
  default     = "stable"
}

# Prometheus
variable "prometheus_app_name" {
  description = "Name of the Prometheus application."
  type        = string
  default     = "prometheus"
}
variable "prometheus_channel" {
  description = "The channel to use when deploying Prometheus charm."
  type        = string
  default     = "stable"
}

# Traefik
variable "traefik_app_name" {
  description = "Name of the Traefik application."
  type        = string
  default     = "traefik"
}
variable "traefik_channel" {
  description = "The channel to use when deploying Traefik charm."
  type        = string
  default     = "stable"
}
