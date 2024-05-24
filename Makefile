##
## Docker
## -----
rmq:
rmq:
	cd ./rabbit-receiver && docker build -t cyprienotto/rabbit-receiver:0.0.1 . && docker push cyprienotto/rabbit-receiver:0.0.1 && cd ..

dsrmq:
dsrmq:
	cd ./rabbit-receiver && kubectl apply -f rabbitmq-configmap.yaml && kubectl apply -f hpa.yaml && kubectl apply -f depl-srv.yml && cd ..
