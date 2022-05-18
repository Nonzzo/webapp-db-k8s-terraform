resource "helm_release" "web" {
    name = "my-local-web-chart"
    chart = "django-k8s"
    repository = "/Users/mac/dev/django-k8s/Django-Terraform/webchart/django-k8s"
    max_history = 3
    wait = true
    reset_values = true

}