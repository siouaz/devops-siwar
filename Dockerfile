FROM node:12.14.1-alpine3.11

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --legacy-peer-deps

# Bundle app source
COPY . /usr/src/app

# Angular CLI
RUN npm install -g @angular/cli

EXPOSE 4200

# Start app
CMD ["ng","serve","--host", "0.0.0.0"]
