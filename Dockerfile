FROM ubuntu:latest

#COPY ./nginx.conf /etc/nginx/nginx.conf
WORKDIR /app
COPY . /app
RUN apt update && apt install nginx -y
EXPOSE 80

CMD ["nginx", "-g" ,"daemon off;"]
