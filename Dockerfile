# Use Node.js v22 as base image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies and tailwindcss
RUN npm install -g npm@11.5.1 && \
    npm ci && \
    npm install tailwindcss postcss autoprefixer

# Copy project files
COPY . .

# Build the application
RUN npm run tailwind:build && \
    npm run build || \
    (echo "Build failed. Checking TypeScript errors..." && \
    npx tsc --noEmit && \
    exit 1)

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "run", "preview"]