## Documentação Pipeline deploy com OpenToFu para GitLab

#### Build da imagem:

Arquivo do Dockerfile: [Dockerfile](https://raw.githubusercontent.com/Bruna0092/opentofu/main/Dockerfile)

```
docker build -t opentofu:tag .
```

#### Deploy

No diretorio do projeto, crie o arquivo de CI [.gitlab-ci.yml](https://github.com/Bruna0092/opentofu/blob/main/.gitlab-ci.yml)

Configure as variaveis de credencial para o aws cli nas configurações de ci/cd do projeto:
```
AWS_SECRET_ACCESS_KEY 
AWS_ACCESS_KEY_ID
```

