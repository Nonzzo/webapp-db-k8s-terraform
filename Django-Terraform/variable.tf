

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
# variable "do_token" {
#     # default = "" # already coded into my cli
#     type = string
# }

variable "cluster_name" {
    default = "woven-django-k8s"
}

variable "cluster_nodes" {
    default = 1
}











