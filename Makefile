#!make

.PHONY: install-pubsub create-deployment destroy


install-pubsub:
	cd ./service-broker; kustomize build .  | kubectl apply -f -

create-deployment:

destroy:
	kubectl delete ns solace-system; kubectl delete ns solace-poc


