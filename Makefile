#!make

.PHONY: destroy-all

install-flux:
	kubectl apply -f https://github.com/fluxcd/flux2/releases/latest/download/install.yaml

install-all:
	cd ./install;  kustomize build . | kubectl apply -f -

install-pubsub:
	cd ./pubsubplus-broker; kustomize build .  | kubectl apply -f -

create-app:
	cd ./custom-app;  kustomize build . | kubectl apply -f -

destroy-install:
	cd ./install;  kustomize build . | kubectl delete -f -

destroy-broker:
	cd ./pubsubplus-broker;  kustomize build . | kubectl delete -f -

destroy-app:
	cd ./custom-app;  kustomize build . | kubectl delete -f -

destroy-all: destroy-app destroy-broker destroy-install
