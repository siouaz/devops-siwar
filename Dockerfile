FROM node:18.13-alpine

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Angular CLI
RUN npm install -g @angular/cli@latest

EXPOSE 4200

# Start app
CMD ["ng","serve","--host", "0.0.0.0"]
