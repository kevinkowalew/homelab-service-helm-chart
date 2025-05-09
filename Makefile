deploy:
	helm install apigateway . --values=./values.yaml -n prod 
stop:
	helm delete apigateway -n prod
