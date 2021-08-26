FROM node:12.13-alpine

WORKDIR /app

COPY package*.json ./

RUN yarn

COPY . .

COPY ./dist ./dist

CMD ["yarn", "start:dev"]