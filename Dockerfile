FROM node:20-alpine

WORKDIR /app

# Copy package files first (better layer caching)
COPY package*.json ./

RUN npm install

# Copy the rest of the app
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]