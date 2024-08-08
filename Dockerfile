# Use official Node.js image as base
FROM node:18

# Create and set the working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD [ "npm", "run", "start" ]
