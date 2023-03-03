resource "helm_release" "nginx_ingress_controller" {
    name = "nginx_ingress_controller"
    repository = "https://kubernetes-charts.storage.googleapis.com/"
    chart = "stable/nginx-ingress"
    version = "4.1.3"
    namespace = "ingress"
    create_namespace = "true"

    set {
      name = "controller.service.type"
      value = "loadBalancer"
    }
    set {
      name = "controller.autoscaling.enabled"
      value = "true"
    }
    set {
      name = "controller.autoscaling.minReplicas"
      value = "2"
    }
    set {
      name = "controller.autoscaling.maxReplicas"
      value = "10"
    }
}

