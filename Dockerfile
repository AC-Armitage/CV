FROM nginx:alpine

#RUN apk update &&  apk add --no-cache certbot certbot-nginx

COPY index.html /usr/share/nginx/html/
COPY styles /usr/share/nginx/html/styles/
COPY face.jpeg /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY *.jpg /usr/share/nginx/html/

EXPOSE 80 443 

CMD ["nginx", "-g", "daemon off;"]



 
