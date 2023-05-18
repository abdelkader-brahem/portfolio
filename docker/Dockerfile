### Build ###
FROM node:14.20.1 AS build
WORKDIR /usr/src/app
COPY package.json  ./
RUN npm install
COPY . .
RUN npm run build 

### Run ###
FROM nginx:1.17.1-alpine As production
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist /usr/share/nginx/html
