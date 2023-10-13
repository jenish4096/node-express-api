# Express REST API

## Requirements

 - [Node v16.6+](https://nodejs.org/en/download/current/) or [Docker](https://www.docker.com/)
 - [Yarn](https://yarnpkg.com/en/docs/install)

## Getting Started

Clone the repo and make it yours:

```bash
git clone --depth 1 https://github.com/jenish4096/node-express-api.git
cd node-express-api
rm -rf .git
```

Install dependencies:

```bash
npm
```

Set environment variables:

```bash
cp .env.example .env
```

## Running Locally

```bash
npm run dev
```

## Running in Production

```bash
npm run start
```

## Lint

```bash
# lint code with ESLint
npm run lint

# try to fix ESLint errors
npm run lint:fix

# lint and watch for changes
npm run lint:watch
```

## Test

```bash
# run all tests with Mocha
npm run test

# run unit tests
npm run test:unit

# run integration tests
npm run test:integration

# run all tests and watch for changes
npm run test:watch

# open nyc test coverage reports
npm run coverage
```

## Validate

```bash
# run lint and tests
npm run validate
```

## Logs

```bash
# show logs in production
pm2 logs
```

## Docker

```bash
# run container locally
npm run docker:dev
or
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up

# run container in production
npm run docker:prod
or
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up

# run tests
npm run docker:test
or
docker-compose -f docker-compose.yml -f docker-compose.test.yml up
```

## Deploy

Set your server ip:

```bash
DEPLOY_SERVER=127.0.0.1
```

Replace my Docker username with yours:

```bash
nano deploy.sh
```

Run deploy script:

```bash
npm run deploy
or
sh ./deploy.sh
```
