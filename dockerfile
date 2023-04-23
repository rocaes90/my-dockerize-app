# Dockerfile

# ==== CONFIGURE ====
# Use a Node 16 base image
FROM node:19-alpine

# create folder for code
WORKDIR /app
COPY package.json .
RUN npm install
# copy code
COPY . .
# Expose the port on which the app will be running
EXPOSE 3000
# command to execute the app
CMD ["npm", "start"]

# Set the working directory to /app inside the container
# WORKDIR /app
# Copy app files
# COPY . .
# ==== BUILD ====
# Install dependencies
# RUN npm ci
# Build the app
# RUN npm run build
# ==== RUN ====
# Set the env to prod
# ENV NODE_ENV production
# Expose the port on which the app will be running
# EXPOSE 3000
# Start the app
# CMD [ "npx", "server", "build" ]