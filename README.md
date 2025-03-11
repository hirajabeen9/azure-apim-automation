🌍 Azure API Management (APIM) Automation with Terraform 🚀
📌 Overview
This repository contains Terraform scripts to deploy and manage Azure API Management (APIM) in a modular way. It supports multiple environments (Dev and Prod) using GitHub Actions for automation.

📂 Folder Structure
terraform-root/
│── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   ├── prod/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│── modules/
│   ├── apim/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│── main.tf
│── variables.tf
│── output.tf
│── terraform.tfvars
│── backend.tf
│── provider.tf
│── README.md
🛠️ Prerequisites
Before using this Terraform project, ensure you have:

Terraform v1.0+ installed → Download Here
Azure CLI installed → Install Guide
An Azure Subscription with appropriate permissions
A Remote Backend Storage Account for storing Terraform state files

⚙️ Setup Instructions
1️⃣ Clone the repository

git clone https://github.com/your-repo/terraform-apim.git
cd terraform-apim
2️⃣ Configure Azure Authentication
Login using the Azure CLI:

az login
az account set --subscription "<your-subscription-id>"
3️⃣ Initialize Terraform

terraform init
4️⃣ Validate and Plan Deployment

terraform plan -var-file="terraform.tfvars"
5️⃣ Apply Terraform Configuration

terraform apply -auto-approve -var-file="terraform.tfvars"
🔄 GitHub Actions for CI/CD
This project includes a GitHub Actions pipeline to automate APIM deployments. To enable it:

Store your Azure credentials as GitHub Secrets:
ARM_CLIENT_ID
ARM_CLIENT_SECRET
ARM_SUBSCRIPTION_ID
ARM_TENANT_ID
Push your changes, and GitHub Actions will trigger the deployment.
📢 Outputs
After deployment, Terraform will return:

APIM ID
Gateway URL
Developer Portal URL
🛠️ Destroy Resources (Cleanup)
To delete the deployed APIM instance:


terraform destroy -auto-approve -var-file="terraform.tfvars"
📌 Best Practices Followed
✅ Modular Terraform structure (Reusability & Scalability)
✅ State Management with Azure Storage Backend
✅ Environment Segmentation (dev, prod)
✅ GitHub Actions for Automation
✅ Secure Secrets Management