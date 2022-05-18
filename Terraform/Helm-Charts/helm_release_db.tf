resource "helm_release" "postgres" {
  name         = "my-local-db-chart"
  chart        =  "postgres"
  repository   = "/Users/mac/dev/django-k8s/Django-Terraform/dbchart/postgres"
  max_history  = 3
  wait         = true
  reset_values = true
}

