FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/test
WORKDIR /usr/src/test

RUN npm install pm2 -g

# Install app dependencies
COPY package.json /usr/src/test/
RUN npm i

# Bundle app source
COPY . /usr/src/test

EXPOSE 8787
CMD [ "npm", "start" ]
