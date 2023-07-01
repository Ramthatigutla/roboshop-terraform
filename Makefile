dev:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform apply -auto-approve -var-file=env-dev/main.tfvars


prod:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform apply -auto-approve -var-file=env-prod/main.tfvars