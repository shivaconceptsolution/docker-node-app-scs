# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files first (better for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the project
COPY . .

# Expose application port (change if needed)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
