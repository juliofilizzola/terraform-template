# Terraform Template

<img width="1000" height="358" alt="image" src="https://github.com/user-attachments/assets/ca678462-0054-477e-b971-c599fc5f0db3" />

Este repositório fornece um template básico para iniciar projetos com Terraform, incluindo exemplos de configuração de provedores, variáveis e manifestos Kubernetes.

## 📁 Estrutura do Projeto

```
terraform-template/
├── README.md
├── terraform.tfvars.exemple
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   └── variables.tf
│   ├── prod/
│   │   ├── main.tf
│   │   └── variables.tf
│   └── staging/
│       ├── main.tf
│       └── variables.tf
├── infra/
│   ├── eks.tf
│   ├── kubernates.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── vpc.tf
│   └── modules/
│       ├── kubernates.tf
│       └── variables.tf
```

- `main.tf`: Recursos e módulos principais do Terraform.
- `provider.tf`: Configuração dos provedores (ex: AWS, Google, Azure).
- `variables.tf`: Definição das variáveis de entrada.
- `terraform.tfvars.exemple`: Exemplo de valores atribuídos às variáveis.
- `outputs.tf`: Saídas da infraestrutura gerada.
- `modules/`: Módulos reutilizáveis para organização do código.
- `app.yaml`: Exemplo de manifesto Kubernetes em YAML (adicione se necessário).

## ✅ Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) **>= 1.0**
- Conta e credenciais do provedor desejado (ex: AWS, GCP, Azure).
- Permissões adequadas para criar recursos na nuvem ou cluster Kubernetes.

## 🚀 Como usar

1. **Clone o repositório:**
   ```sh
   git clone <url-do-repositorio>
   cd terraform-template
   ```

2. **Configure as variáveis:**
   Copie o arquivo `terraform.tfvars.exemple` para `terraform.tfvars` e edite conforme necessário para o seu ambiente.

3. **Gerencie a infraestrutura com o Makefile:**

   - Para aplicar a infraestrutura em produção:
     ```sh
     make run-prod
     ```

   - Para aplicar a infraestrutura em staging:
     ```sh
     make run-staging
     ```

   - Para aplicar a infraestrutura em dev:
     ```sh
     make run-dev
     ```

   - Para visualizar o plano de execução:
     ```sh
     make plan-prod
     make plan-staging
     make plan-dev
     ```

   - Para destruir a infraestrutura:
     ```sh
     make destroy-prod
     make destroy-staging
     make destroy-dev
     ```

## 📦 Deploy

1. Certifique-se de que as credenciais do provedor estão configuradas corretamente no ambiente.
2. Execute os comandos do Terraform conforme descrito acima.
3. Após o `terraform apply`, verifique os recursos criados no provedor de nuvem.

## 📝 Observações

- Adapte os arquivos conforme as necessidades do seu projeto.
- Consulte a [documentação oficial do Terraform](https://developer.hashicorp.com/terraform/docs) para mais detalhes.
- Para manifestos Kubernetes, utilize o arquivo `app.yaml` ou importe YAMLs existentes.

## 🛠️ Comandos do Makefile

O projeto inclui um `Makefile` para facilitar a execução de tarefas comuns. Comandos disponíveis:

- `make run-prod` / `make run-staging` / `make run-dev`: Inicializa e aplica a infraestrutura.
- `make plan-prod` / `make plan-staging` / `make plan-dev`: Gera e exibe o plano de execução.
- `make destroy-prod` / `make destroy-staging` / `make destroy-dev`: Destrói a infraestrutura.

## 📚 Referências

- [Terraform Registry](https://registry.terraform.io/)
- [Documentação do Kubernetes Provider](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)

---

> Template criado para facilitar o início de projetos com Terraform.
