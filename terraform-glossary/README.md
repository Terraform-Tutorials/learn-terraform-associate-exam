# Terraform Glossary
A ideia desse glossário é listar os termos, recursos e palavras-chaves do terraform, tudo dentro do contexto de infraestrutura como código.

## Terraform Concepts
- [x] ***terraform*** :. ferramenta de IaC com o objetivo de criar, alterar e versionar uma infraestrutura de forma segura e eficiente.
- [x] ***IaC*** :. Infrastrcuture as Code, abordagem para gerenciamento de infraestrutura através de arquivos de configuração ao invés de métodos tradicionais.
- [x] ***HCL*** :. Hashicorp Configuration Language, linguagem usada para escrever os arquivos de configuracao do terraform.
- [x] ***terraform.tfstate*** :. arquivo usado para armazenar o estado da infraestrutura gerada pelo terraform (armazena os objetos remotos e os recursos criados localmente).
- [x] ***terraform workflow*** :. sao etapas importantes dentro do funcionamento do terraform, basicamente se resume em 6 comandos principais.
- [x] ***.terraform*** :. diretorio usado para gerenciar plugins e modulos do provedor em cache, ele registra o workspace atual e o estado do backend se necessario alterar.
- [x] ***providers*** :. sao plugins que podem ser classificados como `providers`, usados para se comunicar com plataformas de nuvem e outras API's.
- [x] ***resources*** :. ssao recursos que estas alocados dentros das plataformas de cloud, como instancias, bancos de dados, redes.
- [x] ***terraform CLI*** :. sao os comandos usados pelo terraform para gerenciamento da infraestrutura e organizacao dos recursos.
- [x] ***provisioners*** :. recurso que possibilita modelar os comandos e acoes locais ou em instancias remotas atraves do terraform.

## Terraform Commands (CLI)
- [x] ***$terraform init*** :. comando de inicializao do terraform, onde ele baixa plugins dos provedores e plataformas de nuvem.
- [x] ***$terraform plan*** :. comando usado para executar o planejamento do estado desejado da infraestrutura.
- [x] ***$terraform validate*** :. comando usado para executar validacoes do
- [x] ***$terraform fmt*** :. usado para formatar o codigo da sua configuracao.
- [x] ***$terraform apply*** :. comando para aplicar de fato as acoes mencionadas nos arquivos de configuracao do terraform.
- [x] ***$terraform destroy*** :. comando usado para destruicao da infraestrutura remota.
- [x] ***$terraform taint*** :. marca um determinado recurso como nao funcional, danificado.
- [x] ***$terraform untaint*** :. desmarca um determinado recurso como danificado
- [x] ***$terraform state*** :. gereciamento profundo do arquivo de estado (terraform.tfstate).
- [x] ***$terraform version*** :. usado para mostrar a versao instalada do terraform.
- [x] ***$terraform output*** :. faz a leitura n saida padrao direto do arquivo de estado.
- [x] ***$terraform get*** :. instala oi atualiza modulos do terraform remotos.
- [x] ***$terraform console*** :. console interativo para testes com valores do terraform.
- [x] ***$terraform graph*** :. gera um grafico das etapas da operacao.
- [x] ***$terraform refresh*** :. atualiza o arquivo de estado para se parecer com os recursos remotos.
- [x] ***$terraform workspace*** :. gerenciamento de workspace no terraform.
- [x] ***$terraform providers*** :. mostra os providers que sao requeridos para a configuracao.
- [x] ***$terraform force-unlock*** :. forma manual de dar um `unlock` no arquivo de estado.

## Terraform State
- [x] ***`-lock`*** :. desabilita o recurso de lock do state (arquivo de estado).
- [x] ***remote state*** :. manter seu arquivo de estado remoto.
- [x] ***S3 backend*** :. suporta encriptar os dados dentro do state e mantem mais seguro.
- [ ] 

