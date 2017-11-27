FROM node:8.1.2
WORKDIR /usr/share/nginx/app
COPY . /usr/share/nginx/app/
EXPOSE 80
RUN  yarn install && npm run build && pwd && cp -r dist/* /usr/share/nginx/html/ && rm -rf /usr/share/nginx/app/
CMD ["nginx","-g","daemon off;"]

