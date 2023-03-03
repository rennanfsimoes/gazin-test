resource "helm_release" "nginx_ingress_controller" {
    name = "nginx"
    chart = "./ingress-nginx"
    version = "4.1.3"
    namespace = "ingress"
    create_namespace = "true"

    set {
      name = "controller.service.type"
      value = "LoadBalancer"
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

