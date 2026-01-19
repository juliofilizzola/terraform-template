# Terraform Template

<img width="1536" height="1024" alt="Terraform logo" src="https://github.com/user-attachments/assets/f220bb2e-bb3d-491c-8d3c-5b6bf51f6437" />

Este repositório fornece um template básico para iniciar projetos com Terraform, incluindo exemplos de configuração de provedores, variáveis e manifestos Kubernetes.

## 📁 Estrutura do Projeto

```
terraform-template/
├── app.yaml
├── README.md
├── terraform.tfvars.exemple
├── environments/
│   ├── prod/
│   │   ├── main.tf
│   │   └── variables.tf
│   └── staging/
│       ├── main.tf
│       └── variables.tf
├── infra/
│   ├── eks.tf
│   ├── ks8.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── S3.tf
│   ├── variables.tf
│   └── vpc.tf
│   └── modules/
│       ├── kubernates.tf
│       └── variables.tf
```

- `main.tf`: Recursos e módulos principais do Terraform.
- `provider.tf`: Configuração dos provedores (ex: AWS, Google, Azure).
- `variables.tf`: Definição das variáveis de entrada.
- `terraform.tfvars`: Valores atribuídos às variáveis.
- `outputs.tf`: Saídas da infraestrutura gerada.
- `app.yaml`: Exemplo de manifesto Kubernetes em YAML.
- `modules/`: Módulos reutilizáveis para organização do código.

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

2. **Gerencie a infraestrutura com o Makefile:**

   - Para aplicar a infraestrutura em produção:
     ```sh
     make run-prod
     ```

   - Para aplicar a infraestrutura em staging:
     ```sh
     make run-staging
     ```

   - Para visualizar o plano de execução em produção:
     ```sh
     make plan-prod
     ```

   - Para visualizar o plano de execução em staging:
     ```sh
     make plan-staging
     ```

   - Para destruir a infraestrutura em produção:
     ```sh
     make destroy-prod
     ```

   - Para destruir a infraestrutura em staging:
     ```sh
     make destroy-staging
     ```

3. **Configure as variáveis:**
   Edite o arquivo `terraform.tfvars` conforme necessário para o seu ambiente.

## 📦 Deploy

Para realizar o deploy, siga os passos abaixo:

1. Certifique-se de que as credenciais do provedor estão configuradas corretamente no ambiente.
2. Execute os comandos do Terraform na ordem descrita acima.
3. Após o `terraform apply`, verifique os recursos criados no provedor de nuvem.

## 📝 Observações

- Adapte os arquivos conforme as necessidades do seu projeto.
- Consulte a [documentação oficial do Terraform](https://developer.hashicorp.com/terraform/docs) para mais detalhes.
- Para manifestos Kubernetes, utilize o arquivo `k8s_manifest.tf` ou importe YAMLs existentes via `app.yaml`.

## 🛠️ Comandos do Makefile

O projeto inclui um `Makefile` para facilitar a execução de tarefas comuns. Aqui estão os comandos disponíveis:

- **Executar infraestrutura em produção:**
  ```sh
  make run-prod
  ```
  Inicializa e aplica a infraestrutura no ambiente de produção.

- **Executar infraestrutura em staging:**
  ```sh
  make run-staging
  ```
  Inicializa e aplica a infraestrutura no ambiente de staging.

- **Destruir infraestrutura em produção:**
  ```sh
  make destroy-prod
  ```
  Destrói a infraestrutura no ambiente de produção.

- **Destruir infraestrutura em staging:**
  ```sh
  make destroy-staging
  ```
  Destrói a infraestrutura no ambiente de staging.

- **Planejar infraestrutura em produção:**
  ```sh
  make plan-prod
  ```
  Gera e exibe o plano de execução para o ambiente de produção.

- **Planejar infraestrutura em staging:**
  ```sh
  make plan-staging
  ```
  Gera e exibe o plano de execução para o ambiente de staging.

Utilize esses comandos para gerenciar facilmente os ambientes de infraestrutura.

## 📚 Referências

- [Terraform Registry](https://registry.terraform.io/)
- [Documentação do Kubernetes Provider](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)

---

> Template criado para facilitar o início de projetos com Terraform.
