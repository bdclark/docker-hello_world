# base image, see https://hub.docker.com/_/node/ for available versions/tags
FROM node:6

# Create application directory, also becomes current working directory
WORKDIR /app

# Install app dependencies (busts this layer and all below if deps change)
COPY package.json ./
RUN npm install

# Bundle your app source
COPY . ./

# Expose a port for http, only relevant if serving requests
EXPOSE 8080

# what to actually run, in this case a script declared in package.json
CMD [ "npm", "start" ]
