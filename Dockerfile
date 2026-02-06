# base image
FROM node:18-alpine

#Work-directory
WORKDIR /app

#Caching
COPY package*.json ./

#install dependencies
RUN npm install

#Source code
COPY .  .

#Networking
EXPOSE 4000

#Execte
CMD ["node", "server.js"]