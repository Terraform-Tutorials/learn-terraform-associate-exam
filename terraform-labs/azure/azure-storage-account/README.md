# Create a Storage Account on Azure with Terraform
Manages an Azure Storage Account on Azure with Terraform.

## Login into Azure
First of all,  login into Azure CLoud with CLI (Command Line Interface).

```bash
$ az login
A web browser has been opened at https://login.microsoftonline.com/organizations. Please continue the login in the web browser. If no web browser is available or if the web browser fails to open, use device code flow with `az login --use-device-code`.
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "88888888888888888888888888888",
    "id": "555555555555555555555555555555",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Azure Test",
    "state": "Enabled",
    "tenantId": "a88888888888888888888888888888888",
    "user": {
      "name": "fulano-beltrano@hotmail.com",
      "type": "user"
    }
  }
]
```

## Terraform Commands
We need to run some Terraform commands to check and validate the Terraform code.

- Using the `terraform validate` to check the syntax:

```bash
$ terraform validate 
Success! The configuration is valid.
```

- Using the `terraform fmt` to format the code:

```bash
$ terraform fmt
locals.tf
storage_account.tf
variables.tf
```

- Using the `terraform init` to start the workload:

```bash
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/azurerm from the dependency lock file
- Using previously-installed hashicorp/azurerm v3.0.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Applying the changes:

```bash
$ terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_resource_group.my_resource_group: Creating...
azurerm_resource_group.my_resource_group: Creation complete after 4s 
azurerm_storage_account.my_storage_account: Creating...
azurerm_storage_account.my_storage_account: Still creating... [10s elapsed]
azurerm_storage_account.my_storage_account: Still creating... [20s elapsed]
azurerm_storage_account.my_storage_account: Still creating... [30s elapsed]
azurerm_storage_account.my_storage_account: Creation complete after 35s
azurerm_storage_container.my_storage_container: Creating...
azurerm_storage_container.my_storage_container: Creation complete after 0s

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)