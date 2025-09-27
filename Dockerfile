# Dockerfile - small, reproducible image
FROM node:18-alpine

WORKDIR /app

# copy package.json first to leverage layer caching
COPY package*.json ./
RUN npm install --only=production || true

COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
