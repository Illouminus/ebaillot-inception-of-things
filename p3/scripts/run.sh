# kubectl apply -f configurations/namespaces/argocd-namespace.yaml
kubectl apply -f configurations/namespaces/dev-namespace.yaml
kubectl apply -f configurations/app/deployment.yaml
kubectl apply -f configurations/app/service.yaml
kubectl apply -f configurations/argocd/application.yaml -n argocd
kubectl get secret argocd-initial-admin-secret -n argocd \
  -o jsonpath="{.data.password}" | base64 -d; echo