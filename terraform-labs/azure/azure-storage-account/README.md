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

## Contributing
Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)