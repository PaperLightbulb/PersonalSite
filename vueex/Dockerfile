FROM node:lts-alpine
RUN npm install -g http-server
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8081
CMD [ "http-server", "dist", "-p", "8081" ]
