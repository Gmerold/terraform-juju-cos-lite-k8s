# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

output "model_name" {
  description = "Name of the Juju model used to deploy COS stack."
  value       = juju_model.cos.name
}
