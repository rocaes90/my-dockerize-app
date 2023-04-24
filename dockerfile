# Dockerfile

# ==== CONFIGURE ====
# Use a Node 16 base image
FROM node:19-alpine

# create folder for code
WORKDIR /app

# copy package.json file
COPY package.json .

# install dependencies based on package.json
RUN npm install

# copy code
COPY . .

# Expose the port on which the app will be running
EXPOSE 3000

# command to execute the app
CMD ["npm", "start"]
