# Terraform Template

Este repositório contém um template básico para projetos utilizando o Terraform, com exemplos de configuração para provedores, variáveis, e manifestos Kubernetes.

## Estrutura do Projeto

- `main.tf`: Arquivo principal com recursos e módulos do Terraform.
- `provider.tf`: Configuração dos provedores utilizados.
- `variables.tf`: Definição das variáveis de entrada.
- `terraform.tfvars`: Valores atribuídos às variáveis.
- `k8s_manifest.tf`: Exemplo de manifesto Kubernetes gerenciado pelo Terraform.
- `app.yaml`: Exemplo de manifesto Kubernetes em YAML.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- Provedor(s) configurado(s) no `provider.tf` (ex: Google, AWS, Azure, Kubernetes, etc)

## Como usar

1. **Clone o repositório:**
   ```sh
   git clone <url-do-repositorio>
   cd terraform-template
   ```
2. **Configure as variáveis:**
   Edite o arquivo `terraform.tfvars` conforme necessário.

3. **Inicialize o Terraform:**
   ```sh
   terraform init
   ```

4. **Valide a configuração:**
   ```sh
   terraform validate
   ```

5. **Aplique a infraestrutura:**
   ```sh
   terraform apply
   ```

6. **Destrua a infraestrutura (opcional):**
   ```sh
   terraform destroy
   ```

## Observações

- Adapte os arquivos conforme a necessidade do seu projeto.
- Consulte a [documentação oficial do Terraform](https://www.terraform.io/docs) para mais detalhes.

---

> Template criado para facilitar o início de projetos com Terraform.
