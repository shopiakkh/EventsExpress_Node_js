
FROM node:22-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci --ignore-scripts

COPY src ./src
COPY .sequelizerc ./

USER node

CMD ["npm", "run", "docker:start"]