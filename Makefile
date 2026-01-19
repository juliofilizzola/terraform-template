.PHONY: run-prod run-staging destroy-prod destroy-staging

run-prod:
	terraform -chdir=infra/prod init
	terraform -chdir=infra/prod apply -auto-approve

run-staging:
	terraform -chdir=infra/staging init
	terraform -chdir=infra/staging apply -auto-approve

destroy-prod:
	terraform -chdir=infra/prod destroy -auto-approve

destroy-staging:
	terraform -chdir=infra/staging destroy -auto-approve

plan-prod:
	terraform -chdir=infra/prod init
	terraform -chdir=infra/prod plan

plan-staging:
	terraform -chdir=infra/staging init
	terraform -chdir=infra/staging plan