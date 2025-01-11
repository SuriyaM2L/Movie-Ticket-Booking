# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port that the app runs on (default: 3000)
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "start"]
