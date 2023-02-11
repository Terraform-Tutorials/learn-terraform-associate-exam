# Conceitos importantes sobre o Terraform

## Reference
```txt
Breakdown by content area:

1.0  Understand infrastructure as code (IaC) concepts: 0%
2.0  Understand Terraform's purpose (vs other IaC): 50%
3.0  Understand Terraform basics: 57%
4.0  Use the Terraform CLI (outside of core workflow): 50%
5.0  Interact with Terraform modules: 50%
6.0  Navigate Terraform workflow: 83%
7.0  Implement and maintain state: 37%
8.0  Read, generate, and modify configuration: 63%
9.0  Understand Terraform Cloud and Enterprise capabilities: 100%
```

## IaC Concepts
Então, como o IaC se encaixa no ciclo de vida da infraestrutura? A IaC pode ser aplicada durante todo o ciclo de vida, tanto na construção inicial quanto durante toda a vida útil da infraestrutura. Normalmente, essas atividades são chamadas de atividades do dia 0 e do dia 1. O código “Dia 0” provisiona e configura sua infraestrutura inicial.

Aqui está um exemplo de código que a ferramenta IaC Terraform usaria para provisionar um Amazon VPC. Observe que o código é legível por humanos e máquinas.

```hcl
resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"
}
```

## Meta-Arguments
- `depends_on` - dependencia explicita dentro do terraform.
- `count` - usado para criar numeros de varios recursos, usado em casos quando o objeto e identico.
- `for_each` - similar ao `count` mas para uso em casos quando o objeto de infraestrutura se difere.
- `provider`
- `lifecycle`

## Terraform State File

## Remote Backend
Abaixo podemos conferir um exemplo de `remote backend` apontando para o S3 da AWS.

```yml
terraform {
  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "homelab-terraform-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
```

## Terraform Variables Types
- `string` - a sequence of Unicode characters representing some text, like `hello`.
- `number` - a numeric value. The number type can represent both whole numbers like 15 and fractional values like `6.283185`
- `bool` - a boolean value, either `true` or `false`. bool values can be used in conditional logic.
- `list`  - (or tuple): a sequence of values, like `["us-west-1a", "us-west-1c"]`. Elements in a list or tuple are identified by consecutive whole numbers, starting with zero.
- `map` -  (or object): a group of values identified by named labels, like `{name = "Mabel", age = 52}`.

## Implicit & Explicit Dependency

### Implicit Dependency
```yml
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example_a" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
}

resource "aws_instance" "example_b" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.example_a.id
}
```

**OBS:** nota-se que a linha `instance = aws_instance.example_a.id` do ultimo recurso esta mostrando um `implicit dependency` no terraform.

### Explicit Dependency
```yml
resource "aws_s3_bucket" "example" { }

resource "aws_instance" "example_c" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  depends_on = [aws_s3_bucket.example]
}

module "example_sqs_queue" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "3.3.0"

  depends_on = [aws_s3_bucket.example, aws_instance.example_c]
}
```

**OBS:** aqui podemos ver que o argumento `depends_on` esta explicito mostrando que ele depende do recurso de bucket seja criado.

## String Functions
- `chmp`
- `endswith`
- `format`
- `formatlist`
- `indent`
- `join`
- `lower`
- `regex`

## Terraform Modules
para que possamos entender essa parte mais a fundo, precisamos de alguns exemplos locais de modulos e de conceitos.

```yml
module "consul" {
  source = "hashicorp/consul/aws"
  version = "0.1.0"
}
```

### Private Registry Module Sources
sobre private registry modules, temos que seguir com o seguinte modelo:

`<HOSTNAME>/<NAMESPACE>/<NAME>/<PROVIDER>`

```yml
module "vpc" {
  source = "app.terraform.io/example_corp/vpc/aws"
  version = "0.9.3"
}
```


