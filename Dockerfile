# Build stage
FROM node:20.11.0 

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json .
# COPY yarn.lock .
# RUN yarn install
RUN npm install

COPY . .

# RUN yarn build
RUN npm run build
EXPOSE 3000

# CMD ["yarn", "start"]
CMD ["npm", "start"]
