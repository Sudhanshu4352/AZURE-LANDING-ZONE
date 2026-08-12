# 🚀 Azure Landing Zone Infrastructure ☁️

Welcome to the **Azure Landing Zone** project! This repository contains the Infrastructure as Code (IaC) using **Terraform** 🏗️ to provision and manage a monolithic application infrastructure on Microsoft Azure. 🌐

---

## 📂 Repository Structure 🗺️

Our project follows a clean, modular structure to ensure code reusability and perfectly isolated environments. 🌟

```text
LANDING_ZONE/
├── 🌍 environments/
│   ├── 🛠️ dev/            # Development environment configuration
│   │   ├── 📄 main.tf
│   │   ├── 🔌 provider.tf
│   │   ├── ⚙️ terraform.tfvars
│   │   └── 🧩 variable.tf
│   └── 🚀 pro/            # Production environment (Placeholder for future)
├── 📦 modules/            # Reusable Terraform components
│   ├── 🌐 azurerm_public_ip/
│   ├── 🗂️ azurerm_resource_group/
│   ├── 🕸️ azurerm_subnet/
│   ├── 💻 azurerm_virtual_machine/
│   ├── 🔗 azurerm_virtual_network/
│   └── 🤝 azurerm_vnet_peering/
└── 📖 README.md           # You are here!
```

---

## 🏗️ Core Modules 🧩

The infrastructure is broken down into modular, highly reusable blocks:

- 🗂️ **Resource Group:** The logical base container for all our Azure resources.
- 🔗 **Virtual Network (VNet):** The backbone network infrastructure.
- 🕸️ **Subnet:** Network subdivisions for better traffic routing.
- 🌐 **Public IP:** Essential for external connectivity and internet access.
- 💻 **Virtual Machine:** The core compute instances powering the application.
- 🤝 **VNet Peering:** Network peering configuration for connecting multiple VNets seamlessly.

---

## 🚀 Getting Started 🏁

Ready to deploy? Follow these simple steps! 🛠️

### 📋 Prerequisites 
Ensure you have the following installed before proceeding:
- 🏗️ [Terraform](https://www.terraform.io/downloads.html) installed.
- ☁️ [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) configured and authenticated.
  *(Run `az login` to authenticate! 🔐)*
- 🛡️ Appropriate permissions in your target Azure subscription.

### 💻 Deployment Steps (Dev Environment) 🧪

1️⃣ **Navigate to the dev environment:** 🛣️
   ```bash
   cd environments/dev
   ```

2️⃣ **Initialize Terraform:** 🔄
   *This downloads the required Azure providers and modules.*
   ```bash
   terraform init
   ```

3️⃣ **Review the Execution Plan:** 🔍
   *Check what Terraform is about to create/modify without making actual changes.*
   ```bash
   terraform plan
   ```

4️⃣ **Apply the Infrastructure:** 💥
   *Applies the configuration. Type `yes` when prompted!*
   ```bash
   terraform apply
   ```

---

## 🔐 Environments Overview 🌍
- 🛠️ **Dev:** Currently active! Contains variables and configuration for all development work.
- 🚀 **Pro:** Empty placeholder directory ready to host production infrastructure in the future.

---
*Built with ❤️ and Terraform for Azure.* ✨
