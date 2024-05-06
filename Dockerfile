# Base image
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Create a build of the app with production build
RUN npm run build

# Start production server
CMD ["npm", "run", "start:prod"]

