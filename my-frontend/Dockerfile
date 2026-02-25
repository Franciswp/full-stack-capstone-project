FROM node:20-alpine

WORKDIR /usr/src/app

# Build context is project root; package.json is under my-frontend/
COPY my-frontend/package.json ./
# If you later add a lockfile, also copy it and switch to npm ci:
# COPY my-frontend/package-lock.json ./
# RUN npm ci

# Works without package-lock.json
RUN npm install

# Copy the rest of the frontend source
COPY my-frontend ./ 

EXPOSE 5173

# Dev server (adjust if you build & serve statically instead)
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "5173"]
