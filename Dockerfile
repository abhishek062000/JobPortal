# Use an official Node.js image as a parent image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

Run npm run build
# Expose port 8000 for the Express server
EXPOSE 80

# Start the Express server
CMD ["npm", "start"]
