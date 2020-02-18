FROM node:13.8.0

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
COPY yarn.lock ./
RUN npm config set unsafe-perm true

# Yarn
RUN yarn

# EXPOSE 3000

CMD [ "yarn", "dev" ]