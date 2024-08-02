# Dockerfile
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Build the NestJS application
RUN npm run build

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD [ "npm", "run", "start:prod" ]