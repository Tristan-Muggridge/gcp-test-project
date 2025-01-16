# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code into the container
COPY src ./src

# Expose the port the app runs on
EXPOSE 8080

# Define the environment variable (optional)
ENV NODE_ENV=production

# Start the application
CMD ["npm", "start"]
