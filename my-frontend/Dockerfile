FROM node:20-alpine

WORKDIR /usr/src/app

# Copy manifest files first for better caching
COPY package.json ./
# COPY package-lock.json ./   # uncomment this line if you add a lockfile later

# If you have package-lock.json, prefer `npm ci`
# RUN npm ci

# Fallback that works without package-lock.json:
RUN npm install

# Copy the rest of the frontend source
COPY . .

EXPOSE 5173

# Dev server (adjust if you build & serve statically instead)
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "5173"]
