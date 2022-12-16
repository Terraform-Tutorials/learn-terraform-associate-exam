## Abaixo alguns dos benefícios do arquivo de state do Terraform.

- Finalidade do Terraform state - O arquivo de estado do Terraform é necessário para que o Terraform funcione.
- Mapeamento para o mundo real - O Terraform requer algum tipo de banco de dados para mapear a configuração do Terraform para o mundo real. Por exwemplo, quando temos um recurso `aws_instance foo`, na configuração, o terraform usa esse recurso para saber que o recurso `aws_instance foo` representa um objeto real de uma instância de ID abcd1234 em um sistema remoto.
-  Metadados - o terraform tem a capacidade de rastrear os metadados que servem de dependência de recursos nos provedores, para que isso seja possível o terraform retém uma cópia do conjunto mais recente de dependência do estado.
-  Performance - nesse tipo de benefício, o terraform armazena um cache dos valores de atributos para todos os recrusos de estado, é feito simplesmente para métodos de performance. Ao executar o comando terraform plan, o terraform deve saber o estado atual dos recursos e determinar com eficiência as alterações necessárias para atingir a configuração desejada.

