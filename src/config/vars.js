const path = require('path');

// import .env variables
require('dotenv-safe').load({
  path: path.join(__dirname, '../../.env'),
  sample: path.join(__dirname, '../../.env.example'),
});

module.exports = {
  env: process.env.NODE_ENV || "local",
  port: process.env.PORT || 3000,
  jwtSecret: process.env.JWT_SECRET || 'node-express-local' ,
  jwtExpirationInterval: process.env.JWT_EXPIRATION_MINUTES || 15,
  mongo: {
    uri: process.env.NODE_ENV === 'test'
      ? process.env.MONGO_URI_TESTS
      : process.env.MONGO_URI || 'mongodb://localhost:27017/node-express-local',
  },
  logs: process.env.NODE_ENV === 'production' ? 'combined' : 'dev',
};
