FROM node:13.8.0

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
COPY yarn.lock ./
RUN npm config set unsafe-perm true
RUN yarn

# Run the app
CMD [ "yarn", "dev" ]