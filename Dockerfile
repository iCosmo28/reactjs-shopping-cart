# use a node base image
FROM node:21.6

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./ejemplo1 /ejemplo1

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY ./ejemplo1 /ejemplo1

# set maintainer
LABEL maintainer "malevarro.sec@gmail.com"

# set a health check

# tell docker what port to expose
EXPOSE 3000

CMD [ "npm", "start" ]

