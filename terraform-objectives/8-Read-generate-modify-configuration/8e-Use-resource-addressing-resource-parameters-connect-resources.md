# Use resource addressing and resource parameters to connect resources together
um endereco e recurso e uma string que identifica zero ou mais instancias de recursos em sua configuracao.

podemos separar em duas partes os enderecos:

```hcl
[module path][resource spec]
```

para obter esse entendimento, retirei da doc do terraform:

"Em alguns contextos, o Terraform pode permitir um endereço de recurso incompleto que se refere apenas a um módulo como um todo ou que omite o índice para um recurso de várias instâncias. Nesses casos, o significado depende do contexto, portanto, você precisará consultar a documentação do recurso específico que está usando, que analisa endereços de recursos".

depois que ekle dis


## Create Resource Dependencies
a ideia aqui e falar mais sobre o argumento `depends_on` que e muito usado para tratamento de dependencias em diferentes partes dentro do terraform.

- use o argumento `depends_on` para lidar com recursos ocultos ou dependencias de modulo que o terraform nao pode inferir.
- voce so precisa especificar explicitamente uma dependencia quando um recurso ou modulo depende do comportamento de outro recurso.

