#!/bin/bash

# Certifica-se que o AWS CLI esteja instalado.
sudo apt install awscli -y || true

# Autenticando no ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <account-id>.dkr.ecr.us-east-1.amazonaws.com

# Inicializando container
docker run --name websitematriz -itd -p 8080:80 <ecr-repo-url>