FROM node:16 as base
WORKDIR /app
COPY package*.json .
RUN npm ci && npm cache clean --force
COPY . .

FROM node:16 as prod
WORKDIR /app
COPY package*.json .
RUN npm ci && npm cache clean --force
COPY . .
RUN npm run build
EXPOSE 3000 
ENTRYPOINT ["node", ".output/server/index.mjs"]

FROM node:16 as dev
WORKDIR /app
COPY package*.json .
RUN npm ci
COPY . .
EXPOSE 3000 
CMD ["npm", "run", "dev"]
