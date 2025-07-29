# Use Node.js v22 as base image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci

# Copy project files
COPY . .

# Build TypeScript files first, then run Vite build
RUN npm run tailwind:build && \
    npm run build || \
    (echo "Build failed. Checking TypeScript errors..." && \
    npx tsc --noEmit && \
    exit 1)

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "run", "preview"]
