# Comandos

Comandos para construir o app e iniciá-la.

```sh
docker build -t ola-flask .

docker run -p 5000:5000 ola-flask
```

# Pipeline Jenkins

Comandos salvos no jenkins para executar na pipeline.

```sh
echo "Iniciando build da imagem."

docker build -t 145869745236/ola-flask:latest .

echo "Iniciando login dockerhub."

echo 'senha$ecreta' | docker login -u 145869745236 --password-stdin

echo "Iniciando push para dockerhub."

docker push 145869745236/ola-flask:latest

echo "Finalizado."
```
