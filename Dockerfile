# Use the Alpine Linux base image with version 3.19.1 
FROM alpine:3.19.1 

# Atualiza os repositórios e instala o Git 
RUN apk update && \ 
    apk upgrade && \ 
    apk add --no-cache git && \ 
    apk add --no-cache curl 

# Define o diretório de trabalho 
WORKDIR /app 


# Download do instalador: 
RUN curl --proto '=https' --tlsv1.2 -fsSL https://get.opentofu.org/install-opentofu.sh -o install-opentofu.sh 

# Aplica permissões: 
RUN chmod +x install-opentofu.sh 


# Executa o instalador: 
RUN ./install-opentofu.sh --install-method apk 

# Remove o instalador 
RUN rm install-opentofu.sh 
