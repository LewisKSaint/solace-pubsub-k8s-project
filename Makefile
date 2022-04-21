#!make

.PHONY: install-pubsub


install-pubsub:


create-custom-deployment:


destroy:
	kubectl delete ns solace-system; kubectl delete ns solace-poc


