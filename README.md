# Terraform Template

Este repositório fornece um template básico para iniciar projetos com Terraform, incluindo exemplos de configuração de provedores, variáveis e manifestos Kubernetes.

## 📁 Estrutura do Projeto

```
terraform-template/
├── app.yaml
├── README.md
├── terraform.tfvars.exemple
├── environments/
│   ├── prod/
│   │   └── main.tf
│   └── staging/
├── infra/
│   ├── eks.tf
│   ├── ks8.tf
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   └── vpc.tf
```

- `main.tf`: Recursos e módulos principais do Terraform.
- `provider.tf`: Configuração dos provedores (ex: AWS, Google, Azure).
- `variables.tf`: Definição das variáveis de entrada.
- `terraform.tfvars`: Valores atribuídos às variáveis.
- `k8s_manifest.tf`: Exemplo de manifesto Kubernetes gerenciado pelo Terraform.
- `app.yaml`: Exemplo de manifesto Kubernetes em YAML.

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
   Edite o arquivo `terraform.tfvars` conforme necessário para o seu ambiente.

3. **Inicialize o Terraform:**
   ```sh
   terraform init
   ```

4. **Valide a configuração:**
   ```sh
   terraform validate
   ```

5. **Visualize o plano de execução:**
   ```sh
   terraform plan
   ```

6. **Aplique a infraestrutura:**
   ```sh
   terraform apply
   ```

7. **Destrua a infraestrutura (opcional):**
   ```sh
   terraform destroy
   ```

## 📝 Observações

- Adapte os arquivos conforme as necessidades do seu projeto.
- Consulte a [documentação oficial do Terraform](https://developer.hashicorp.com/terraform/docs) para mais detalhes.
- Para manifestos Kubernetes, utilize o arquivo `k8s_manifest.tf` ou importe YAMLs existentes via `app.yaml`.

## 📚 Referências

- [Terraform Registry](https://registry.terraform.io/)
- [Documentação do Kubernetes Provider](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)

---

> Template criado para facilitar o início de projetos com Terraform.
