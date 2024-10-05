FROM node:lts-alpine3.20

#Cria uma pasta para o app
WORKDIR /usr/src/app

#Copia o package.json para a pasta do app (a * é para copiar o package.json e o package-lock.json)
COPY package*.json ./

#Instala as dependências
RUN npm install

#Copia o resto dos arquivos para a pasta do app
COPY . .

#Compila o app
RUN npm run build

#Expõe a porta 3000
EXPOSE 3000

#Inicia o app
CMD ["npm", "run", "start"]

