## Describe advantages of IaC patterns
Algumas das vbantagens de IaC você pode verificar abaixo:

- **A IaC facilita o provisionamento** -  e a aplicação de configurações de infraestrutura, economizando tempo, ela padroniza fluxos de trabalho em diferentes provedores de infraestrutura, por exemplo VMware, AWS, Azure, GCP, etc. usando uma sintaxe comum em todos eles.

- **A IaC facilita a compreesão da infraestrutura** - porque pode abranger vários arquivos, permitindo que operadores humanos organizem o código com base na intenção. Por exemplo, um operador pode criar diferentes arquivos para definir diferentes componentes de infraestrutura, ou separar definições de variáveis de blocos de execução sem afetar a execução.

- **IaC torna a infraestrura mais confiável** - A IaC torna as alterações idempotentes, consistentes e repetíveis e previsíveis. Sem a IaC você provavelmente teria que ajustar os servidores e os recursos de forma manual, executando uma série de comandos e scripts manualmente, isso gera erros humanos, comandos errados e podem abrir mais chances de outros comandos serem executados novamente de forma errada.

- **Possibilidade de testar o código** - com IaC, podemos testar o código e revisar os resultados antes que o código seja aplicado nos ambientes de destino (TEST, PROD). Quando o código não está correto, podemos revazer as alterações até que os resultados esperados possam ser atingidos, isso permite que o resultado seja previsto antes que o código seja aplicado em outros ambientes. Depois de pronto, podemos aplicar esse código por meio de automação, e escalar garantindo consistência, e repetibilidade na forma como ele é aplicado.