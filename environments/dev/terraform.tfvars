resource_groups = {
  rg1 = {
    name     = "landingzone-01-dev"
    location = "southafricanorth"
  }
}


virtual_networks = {
  vnet-01 = {
    address_space       = ["10.10.0.0/16"]
    location            = "southafricanorth"
    resource_group_name = "landingzone-01-dev"
  }
  vnet-02 = {
    address_space       = ["10.20.0.0/16"]
    location            = "southafricanorth"
    resource_group_name = "landingzone-01-dev"
  }
}

vnet_peering = {
  peer1to2 = {
    resource_group_name       = "landingzone-01-dev"
    virtual_network_name      = "vnet-01"

    remote_vnet_name                = "vnet-02"
    remote_vnet_resource_group_name = "landingzone-01-dev"
  }

  peer2to1 = {
    resource_group_name       = "landingzone-01-dev"
    virtual_network_name      = "vnet-02"
    
    remote_vnet_name                = "vnet-01"
    remote_vnet_resource_group_name = "landingzone-01-dev"
  }
}

subnets = {
  subnets-landingzone-01 = {
    resource_group_name  = "landingzone-01-dev"
    virtual_network_name = "vnet-01"
    address_prefixes     = ["10.10.1.0/24"]
  }
  subnets-landingzone-02 = {
    resource_group_name  = "landingzone-01-dev"
    virtual_network_name = "vnet-01"
    address_prefixes     = ["10.10.2.0/24"]
  }
}



public_ip = {
  pip_app = {
    public_ip_name      = "pip-app-dev"
    resource_group_name = "landingzone-01-dev"
    location            = "southafricanorth"
    allocation_method   = "Static"
  }
}

virtual_machines = {
  vm01 = {
    nic_name            = "nic-vm01-dev"
    location            = "southafricanorth"
    resource_group_name = "landingzone-01-dev"
    nic_subnet_name     = "subnets-landingzone-01"
    nic_vnet_name       = "vnet-01"
    vm_name             = "vm01-dev"
    vm_size             = "Standard_D4_v5"
    admin_username      = "testadmin"
    admin_password      = "Password1122"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts"
    image_version       = "latest"

    disable_password_authentication = false
  }
}