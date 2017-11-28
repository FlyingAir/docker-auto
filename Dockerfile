FROM node:8.1.2

RUN yum install nginx \
    && service nginx start
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN  yarn install && npm run build \
    && pwd \
    && cp -r dist/* /usr/share/nginx/html/ \
    && rm -rf /app
CMD ["nginx","-g","daemon off;"]

