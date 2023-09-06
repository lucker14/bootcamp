# Bootcamp

Terraform operations should work typicaly with `init`, `apply`, `plan`

The first task with token and OCI access to k8s was pretty easy, I've just added token to the user in kubeconfig.

I did not get anything to internet access, everything I accessed was thourgh port-forwarding.

I've tried two ways of implementing the nginx, but I've ran into self-inflicted problem by using default namespace for both ways, and then after splitting to the two namespace, I've had only time to kinda half-ass both solutions.

1. Was this [Ingress-Nginx Controller](https://kubernetes.github.io/ingress-nginx/)

2. Was [Ingress Controller by Nginx](https://github.com/nginxinc/kubernetes-ingress/tree/main)

If I'd have to choose I'd go for second solution, as it's directly mady by the guys behing Nginx and also seems more robust and configurable.

In the end when this would work, I'd just need to edit the nginx config itself, to return correct result.

The last thing I'd do would be to properelly setup the connection between GH repo and ArgoCD, preferebly by Github Apps connection.

Then obvilslu this whole code would need cleaning and I'd like to split it between TF repo and Helm repo.
