FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install   # cached layer

COPY . .

EXPOSE 8000
CMD ["node", "server.js"]
