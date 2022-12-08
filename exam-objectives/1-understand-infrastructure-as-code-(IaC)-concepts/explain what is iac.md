# Explain what is IaC
IaC é a uma aboardagem usada para colaboração em organizações com a ideia de melhorar e agilizar o deployment de aplicações e infraestruturas, aumento de habilidade para escalar rapidamente, e melhorar o processo de desenvolvimento de aplicações. A IaC permite você fazer tudo isso de forma consitente e proficiente.

### IaC Tools
Existe MUITAS ferraentas de IaC disponíveis no mercado, mas grande parte delas se mantém nas seguintes abaixo:

- Hashicorp Terraform
- AWS Cloud Formation
- Azure Resource Manager
- Google Cloud Deoployment Manager
- Pulumi.

### What is Terraform?
Terraform é uma ferramenta de infraestrutura como código, que ajuda você a construir, alterar e versionar recursos em ambientes de nuvem e on-premisses de forma segura e eficiente. Para provisionar ambientes com Terraform você pode usar um workflow que gerencia a infraestrutura, podendo provisionar recursos com ocomputação, banco de dados, armazenamentos, redes e outros recursos.

### How Terraform works?
O Terraform cria e gerencia recursos em ambientes de cloud através de APIs, justamente se conectando com os provedores como AWS, Azure, GCP.

![terra](https://github.com/Terraform-Tutorials/learn-terraform-associate-exam/blob/main/exam-objectives/images/terra1.png) 

O workflow do Terraform funciona em 3 modos:

- **Write:** você define os recursos que podem ser provisionados no ambiente, como um EC2 ns AWS. ou uma VPC.
- **Plan:** o Terraform cria um plano de execução da infraestrutura que está sendo provisionada, ou destrói o que está sendo feito no ambiente.
- **Apply:** essa etapa ele aplica as alterações, respeitando sempre as dependência dos recursos que estãos sendo criados, por exemplo, ele pode criar as propriedades de uma VPC, e muda o número de EC2 dentro das VPCs, certamente ele criará primeiro a VPC e depois os recuesos de EC2.

### Terraform Use Cases
Vamos descrever alguns dos principais caos de usos do Terrafor  dentro do ambiente corporativo.

- **Multi-Cloud Deployment** - Permite você criar recursos através de vários provedores de nuvem, permitindo tolerância a falhas, recueperação mais rápida de incidentes. A ideia do Terraform é simplificar esse trabalho de provisionamento, uma vez que, cada provedor de nuvem tem a sua complexidade e o Terraform usa HCL para definir os recursos, isso simplifica o gerenciamento e orquetração em larga escala de vários provedores de nuvem através de infraestruturas.

- **Application Infrastructure Deployment, Sacling and Monitoring Tools** - Podemos usar Terraform para eficientes deploys, escalar, e monitorar infraestruturas. Com o uso do Terraform, podemos fazer deploy de uma camada de banco de dados antes de provisionar os servidores web que dependem dessa camada de banco de dados, por exemplo.

- **Self-Service Clusters** - 
