# ☁️ Azure Landing Zone

This repository contains the Infrastructure as Code (IaC) using **Terraform** to provision and manage a monolithic application infrastructure on Microsoft Azure.

## 📁 Repository Structure

This project follows a modular structure to ensure reusability and separation of environments.

```text
LANDING_ZONE/
├── environments/
│   ├── dev/            # Development environment configuration
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   ├── terraform.tfvars
│   │   └── variable.tf
│   └── pro/            # Production environment configuration
├── modules/            # Reusable Terraform modules
│   ├── azurerm_public_ip/
│   ├── azurerm_resource_group/
│   ├── azurerm_subnet/
│   ├── azurerm_virtual_machine/
│   ├── azurerm_virtual_network/
│   └── azurerm_vnet_peering/
└── README.md           # Project documentation
```

## 🏗️ Modules Included

The infrastructure is broken down into the following reusable modules:
- **Resource Group:** Base container for all Azure resources.
- **Virtual Network (VNet):** Core network infrastructure.
- **Subnet:** Subnets within the Virtual Network.
- **Public IP:** Public IP addresses for external connectivity.
- **Virtual Machine:** Compute instances.
- **VNet Peering:** Network peering configuration for connecting VNets.

## 🚀 Getting Started

### Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed.
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed and authenticated (`az login`).
- Appropriate permissions in your Azure subscription.

### Deployment Steps (Dev Environment)

1. **Navigate to the dev environment:**
   ```bash
   cd environments/dev
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Review the planned changes:**
   ```bash
   terraform plan
   ```

4. **Apply the infrastructure:**
   ```bash
   terraform apply
   ```

## 🔐 Environments
- **Dev:** Currently active and contains configuration for the development environment.
- **Pro:** Placeholder folder for future production environment infrastructure.
