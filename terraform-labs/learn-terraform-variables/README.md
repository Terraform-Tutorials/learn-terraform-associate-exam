## Variables
temos que entender que por boas praticas, sempre devemos usar variaveis, e em arquivos separados, como `variables.tf`:

```hcl
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}
```

2. para chamar uma variavel que foi declarada, seguimos com o seguinte abaixo:

```hcl
provider "aws" {
-  region  = "us-west-2"
+  region  = var.aws_region
}
```