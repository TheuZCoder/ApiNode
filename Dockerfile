# Use a imagem base do Node.js
FROM node:latest

# Defina a porta em que o aplicativo Express estará escutando (padrão 8550)
ENV PORT=8550
ENV DATABASE_URL=postgres://default:yoH3dA8nWikc@ep-muddy-block-a4wezwt3-pooler.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require

# Crie e defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo package.json para o diretório de trabalho
COPY package.json .

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto para o diretório de trabalho
COPY . .

# Exponha a porta em que o aplicativo Express está sendo executado
EXPOSE $PORT

# Comando para iniciar o aplicativo quando o contêiner for executado
CMD ["npm", "start"]
