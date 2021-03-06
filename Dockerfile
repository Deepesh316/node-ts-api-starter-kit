#Use the official Node.js 10 image
#https://hub.docker.com/_/node
FROM node:10

#Create and change to the app directory
WORKDIR /app

#Copying this separately prevents re0running npm install on every code change.
COPY package.json /app

#Install dependencies
RUN npm install

#COPY local code to the container image
COPY . /app

#Run the web service on container startup
CMD ["npm", "start"]

#Expose Port Number
EXPOSE 3000