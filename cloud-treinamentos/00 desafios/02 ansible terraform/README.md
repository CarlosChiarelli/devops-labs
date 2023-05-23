# Desafio 2

---

## Enunciado

**Aviso**: Este desafio será passado pra você de maneira similar ao que as empresas utilizam ao testar um candidato, pois assim você já irá se acostumar a maneira que é executada em uma entrevista de emprego, vamos ao desafio.

Desafio: A empresa 'Marisa Store' possui um site que constantemente fica inoperante por estar hospedado em infraestrutura local na sede da empresa, Martin que é CTO da empresa não está contente com isso pois está recebendo diversas reclamações de clientes que não conseguem finalizar suas compras fazendo a empresa perder **muito** dinheiro, por indicação de um amigo ele decidiu lhe contratar para montar uma nova infraestrutura em nuvem para tentar resolver esse problema.

Em conversa com a equipe de TI da 'Marisa Store' as informações que lhe passaram foram estas:

- O site é em Wordpress com banco de dados MySQL;
- Atualmente ele está rodando em uma maquina com 2 vCPU e 2GB RAM;
- Atualmente a empresa ainda não possui um certificado HTTPS;
- O domínio da empresa (marisastore.tf) está atualmente hospedado em um servidor local.

As exigências de Martin são:

- A infraestrutura deve ser desenvolvida como código com Terraform;
- A infraestrutura deve ser de fácil portabilidade;
- A infraestrutura deve ser criada na nuvem da AWS.

Com base nas informações acima desenvolva a sua versão da infraestrutura conforme pedido de Martin usando dos conhecimentos e boas práticas aprendidas até agora, insira seu projeto IaC em um repositório GIT e compartilhe com seus colegas no grupo da comunidade.

Obs: Lembre-se de adicionar um readme com as instruções para a execução do seu codigo.

---

## Passo a passo

Se possível usar módulos (modules) do terraform. Não fazer configurações utilizando console aws (interface web).

- levantar aplicação wordpress (2 vCPU e 2GB RAM)
- levantar mysql (banco serveless)
- associar site ao domínio da empresa (marisastore.tf) (DNS, route 53)
- associar certificado HTTPS no wordpress

---

## Construção

1. Configurar o repositório Git e o GitLab;
2. Criar a infraestrutura básica da AWS com Terraform:
3. VPC, subnets, Security Groups e IAM roles;
4. Criar o ambiente de aplicação do WordPress utilizando Docker e Elastic Beanstalk;
5. Criar o banco de dados MySQL Serverless (RDS) na AWS (Aurora Serverless);
6. Configurar o Route 53 para associar o domínio da empresa ao ambiente Elastic Beanstalk;
7. Configurar o Amazon Certificate Manager (ACM) e adicionar o certificado HTTPS no WordPress;

---

# Projeto Marisa Store

Este projeto contém a infraestrutura como código (IaC) para a aplicação WordPress da Marisa Store, utilizando Terraform e a plataforma AWS.

## Pré-requisitos

- Terraform versão 1.4.5 ou superior
- Conta AWS com as permissões adequadas (usuário IAM terraform e par de chave ssh ec2 configurada)

## Instruções

1. Clone o repositório:

```sh
git clone <URL_DO_REPOSITÓRIO_GITLAB>
```

2. Configure as credenciais da AWS:

```sh
export AWS_ACCESS_KEY_ID=<SEU_AWS_ACCESS_KEY>
export AWS_SECRET_ACCESS_KEY=<SEU_AWS_SECRET_KEY>
```

É necessário que o usuário programático com as credênciais acima tenha acesso às seguintes permissões (políticas):

- AmazonRDSFullAccess
- AmazonEC2FullAccess
- AmazonVPCFullAccess
- AmazonRoute53FullAccess
- AdministratorAccess-AWSElasticBeanstalk
- AWSCertificateManagerFullAccess

3. Inicialize o Terraform:

```sh
terraform init

```

4. Verifique o plano de execução do Terraform:

```sh
terraform plan
```

5. Aplique as mudanças na infraestrutura:

```sh
terraform apply
```

Após a execução bem-sucedida do `terraform apply`, a infraestrutura será implantada na AWS e estará pronta para uso.

## Ansible - Wordpress e Mysql

Para configurar o app e o banco é necessário adicionar o DNS IPv4 público da instância do EC2 no arquivo `ansible/hosts`.

Aplicar o comando ansible para ele se conectar na AWS. É ncessário estar dentro do diretório `ansible`.

```sh
ansible-playbook -i hosts wordpress.yml -u ubuntu --private-key ~/.ssh/terraform
```
