# Use a imagem base do Node.js
FROM node:14

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos package.json e package-lock.json
COPY package*.json ./

# Instala as dependências da aplicação
RUN npm install

# Copia o código da aplicação
COPY . .

# Define a porta que o container vai expor
EXPOSE 8097

# Comando para iniciar a aplicação
CMD ["npm", "start"]
