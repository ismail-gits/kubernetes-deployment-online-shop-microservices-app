kubectl delete -f kubernetes-services/adservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/cartservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/checkoutservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/currencyservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/emailservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/frontend-service.yaml -n microservices
kubectl delete -f kubernetes-services/paymentservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/productcatalogservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/recommendationservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/redis-cart-service.yaml -n microservices
kubectl delete -f kubernetes-services/shippingservice-service.yaml -n microservices
kubectl delete -f kubernetes-services/ingress.yaml -n microservices