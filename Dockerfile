# Stage 1: Build the SvelteKit application
FROM node:22-alpine AS build

WORKDIR /app

# Copy package.json and pnpm-lock.yaml first to leverage Docker cache
# if using pnpm (replace with yarn.lock or package-lock.json if using yarn/npm)
COPY package.json ./
COPY package-lock.json ./

# Install dependencies (use the appropriate command for your package manager)
RUN npm ci

# Copy the rest of your application code
COPY . .

# Build the SvelteKit application for static export
# Ensure your svelte.config.js is configured for static adapter (e.g., adapter-static)
RUN npm run build

# Stage 2: Serve the static files with a lightweight web server (e.g., Nginx)
FROM nginx:alpine AS production

# Copy the built SvelteKit static files from the build stage
COPY --from=build /app/build /usr/share/nginx/html

# Optional: Copy a custom Nginx configuration if needed
# For a basic static site, the default Nginx config is usually fine.
# If you have specific routing, error pages, or headers, you might need this.
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the port Nginx listens on
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]