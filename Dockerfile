# Use a imagem base do Node.js
FROM node:latest

# Crie e defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo package.json para o diretório de trabalho
COPY package.json .

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto para o diretório de trabalho
COPY . .

# Exponha a porta em que o aplicativo Express está sendo executado
EXPOSE 8550

# Comando para iniciar o aplicativo quando o contêiner for executado
CMD ["npm", "start"]
