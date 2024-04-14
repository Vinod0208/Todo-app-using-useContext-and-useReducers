FROM node:16-alpine AS deps


WORKDIR /app
COPY package*.json /app

RUN npm ci
COPY . /app
EXPOSE 3000
   
CMD ["npm", "start"]
