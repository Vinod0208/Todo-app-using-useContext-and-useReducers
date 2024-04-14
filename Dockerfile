FROM node:16-alpine AS deps


WORKDIR /app
COPY package*.json .

RUN npm install
COPY . .
EXPOSE 3000
   
CMD ["npm", "start"]
