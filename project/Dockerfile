FROM node:lts-alpine
RUN npm install -g http-server
RUN npm install express
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8080
CMD [ "http-server", "dist" ]
CMD [ "node", "backend.js" ]
