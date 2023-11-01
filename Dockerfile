FROM node:18-alpine as dev

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production --silent && mv node_modules ../

COPY . .

EXPOSE 3000

RUN npm install -g nodemon

CMD npm run dev



FROM node:18-alpine as prod

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production --silent && mv node_modules ../

COPY . .

ARG PORT=$PORT JWT_SECRET=$JWT_SECRET JWT_EXPIRATION_MINUTES=$JWT_EXPIRATION_MINUTES MONGO_URI=$MONGO_URI

ENV PORT=${PORT} JWT_SECRET=${JWT_SECRET} JWT_EXPIRATION_MINUTES=${JWT_EXPIRATION_MINUTES} MONGO_URI=${MONGO_URI}

EXPOSE ${PORT}

CMD npm run start