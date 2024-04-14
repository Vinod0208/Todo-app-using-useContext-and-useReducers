FROM ubuntu

WORKDIR /app
COPY package.json ./
RUN npm install

FROM node:16-alpine AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .

RUN npm run build


CMD ["node", "runserver", "0.0.0.0:8000"]
