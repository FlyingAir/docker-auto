FROM node:8.1.2
WORKDIR /usr/share/nginx/app
COPY . /usr/share/nginx/app/
EXPOSE 80
RUN  yarn install && npm run build


