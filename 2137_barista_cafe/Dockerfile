FROM ubuntu:latest

#COPY ./nginx.conf /etc/nginx/nginx.conf

RUN apt update && apt install nginx -y
EXPOSE 81

CMD ["nginx", "-g" ,"daemon off;"]

