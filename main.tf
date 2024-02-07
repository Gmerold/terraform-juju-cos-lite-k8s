# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

resource "juju_model" "cos" {
  name = var.model-name
}

module "alertmanager" {
  source = "./modules/terraform-juju-alertmanager-k8s"

  model-name = juju_model.cos.name
  app_name = var.alertmanager_app_name
  channel = var.alertmanager_channel
}

module "catalogue" {
  source = "./modules/terraform-juju-catalogue-k8s"

  model-name = juju_model.cos.name
  app_name = var.catalogue_app_name
  channel = var.catalogue_channel
}

module "grafana" {
  source = "./modules/terraform-juju-grafana-k8s"

  model-name = juju_model.cos.name
  app_name = var.grafana_app_name
  channel = var.grafana_channel
}

module "loki" {
  source = "./modules/terraform-juju-loki-k8s"

  model-name = juju_model.cos.name
  app_name = var.loki_app_name
  channel = var.loki_channel
}

module "prometheus" {
  source = "./modules/terraform-juju-prometheus-k8s"

  model-name = juju_model.cos.name
  app_name = var.prometheus_app_name
  channel = var. prometheus_channel
}

module "traefik" {
  source = "./modules/terraform-juju-traefik-k8s"

  model-name = juju_model.cos.name
  app_name = var.traefik_app_name
  channel = var.traefik_channel
}

# Provided by Alertmanager

resource "juju_integration" "alertmanager-metrics" {
  model = var.model-name

  application {
    name     = module.alertmanager.app_name
    endpoint = module.alertmanager.metrics-endpoint
  }

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.metrics-endpoint
  }
}
resource "juju_integration" "loki-alerting" {
  model = var.model-name

  application {
    name     = module.alertmanager.app_name
    endpoint = module.alertmanager.alerting-endpoint
  }

  application {
    name     = module.loki.app_name
    endpoint = module.loki.alertmanager-endpoint
  }
}
resource "juju_integration" "prometheus-alerting" {
  model = var.model-name

  application {
    name     = module.alertmanager.app_name
    endpoint = module.alertmanager.alerting-endpoint
  }

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.alertmanager-endpoint
  }
}
resource "juju_integration" "alertmanager-grafana-dashboard" {
  model = var.model-name

  application {
    name     = module.alertmanager.app_name
    endpoint = module.alertmanager.grafana-dashboard-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.grafana-dashboard-endpoint
  }
}
resource "juju_integration" "alertmanager-grafana-source" {
  model = var.model-name

  application {
    name     = module.alertmanager.app_name
    endpoint = module.alertmanager.grafana-source-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.grafana-source-endpoint
  }
}

# Provided by Catalogue

resource "juju_integration" "alertmanager-catalogue" {
  model = var.model-name

  application {
    name     = module.alertmanager.app_name
    endpoint = module.alertmanager.catalogue-endpoint
  }

  application {
    name     = module.catalogue.app_name
    endpoint = module.catalogue.catalogue-endpoint
  }
}
resource "juju_integration" "grafana-catalogue" {
  model = var.model-name

  application {
    name     = module.catalogue.app_name
    endpoint = module.catalogue.catalogue-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.catalogue-endpoint
  }
}
resource "juju_integration" "prometheus-catalogue" {
  model = var.model-name

  application {
    name     = module.catalogue.app_name
    endpoint = module.catalogue.catalogue-endpoint
  }

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.catalogue-endpoint
  }
}

# Provided by Grafana

resource "juju_integration" "grafana-metrics" {
  model = var.model-name

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.metrics-endpoint
  }

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.metrics-endpoint
  }
}

# Provided by Loki

resource "juju_integration" "loki-metrics" {
  model = var.model-name

  application {
    name     = module.loki.app_name
    endpoint = module.loki.metrics-endpoint
  }

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.metrics-endpoint
  }
}
resource "juju_integration" "loki-grafana-dashboard" {
  model = var.model-name

  application {
    name     = module.loki.app_name
    endpoint = module.loki.grafana-dashboard-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.grafana-dashboard-endpoint
  }
}
resource "juju_integration" "loki-grafana-source" {
  model = var.model-name

  application {
    name     = module.loki.app_name
    endpoint = module.loki.grafana-source-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.grafana-source-endpoint
  }
}

# Provided by Prometheus

resource "juju_integration" "prometheus-grafana-dashboard" {
  model = var.model-name

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.grafana-dashboard-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.grafana-dashboard-endpoint
  }
}
resource "juju_integration" "prometheus-grafana-source" {
  model = var.model-name

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.grafana-source-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.grafana-source-endpoint
  }
}

# Provided by Traefik

resource "juju_integration" "alertmanager-ingress" {
  model = var.model-name

  application {
    name     = module.alertmanager.app_name
    endpoint = module.alertmanager.ingress-endpoint
  }

  application {
    name     = module.traefik.app_name
    endpoint = module.traefik.ingress-endpoint
  }
}
resource "juju_integration" "catalogue-ingress" {
  model = var.model-name

  application {
    name     = module.traefik.app_name
    endpoint = module.traefik.ingress-endpoint
  }

  application {
    name     = module.catalogue.app_name
    endpoint = module.catalogue.ingress-endpoint
  }
}
resource "juju_integration" "grafana-ingress" {
  model = var.model-name

  application {
    name     = module.traefik.app_name
    endpoint = module.traefik.traefik-route-endpoint
  }

  application {
    name     = module.grafana.app_name
    endpoint = module.grafana.ingress-endpoint
  }
}
resource "juju_integration" "loki-ingress" {
  model = var.model-name

  application {
    name     = module.traefik.app_name
    endpoint = module.traefik.ingress-per-unit-endpoint
  }

  application {
    name     = module.loki.app_name
    endpoint = module.loki.ingress-endpoint
  }
}
resource "juju_integration" "prometheus-ingress" {
  model = var.model-name

  application {
    name     = module.traefik.app_name
    endpoint = module.traefik.ingress-per-unit-endpoint
  }

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.ingress-endpoint
  }
}
resource "juju_integration" "traefik-metrics" {
  model = var.model-name

  application {
    name     = module.traefik.app_name
    endpoint = module.traefik.metrics-endpoint
  }

  application {
    name     = module.prometheus.app_name
    endpoint = module.prometheus.metrics-endpoint
  }
}

# Cross-model integrations offers

resource "juju_offer" "prometheus-remote-write" {
  model            = juju_model.cos.name
  application_name = module.prometheus.app_name
  endpoint         = module.prometheus.receive-remote-write-endpoint
}
resource "juju_offer" "loki-logging" {
  model            = juju_model.cos.name
  application_name = module.loki.app_name
  endpoint         = module.loki.logging-endpoint
}
