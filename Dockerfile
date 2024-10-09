FROM node:22-alpine3.19

RUN apk add build-base python3

WORKDIR /app
COPY package*.json .
RUN npm i

COPY . .

CMD ["node", "polaris.js"]