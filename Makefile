.PHONY: run-prod run-staging destroy-prod destroy-staging


INIT-DEV:
	cd environments/dev && terraform init

INIT-PROD:
	cd environments/prod && terraform init

INIT-STAGING:
	cd environments/staging && terraform init


PLAN-DEV:
	cd environments/dev && terraform plan

PLAN-PROD:
	cd environments/prod && terraform plan

PLAN-STAGING:
	cd environments/staging && terraform plan


APPLY-DEV:
	cd environments/dev && terraform apply -auto-approve

APPLY-PROD:
	cd environments/prod && terraform apply -auto-approve

APPLY-STAGING:
	cd environments/staging && terraform apply -auto-approve

