FROM node:18-alpine

WORKDIR /app

# Install dependencies based on the preferred package manager
COPY package*.json ./
RUN npm install

COPY . .

# Build the app
RUN npm run build

# Expose the port for the Next.js app
EXPOSE 3000

# Start the app in development mode with hot-reloading
CMD ["npm", "run", "dev"]
