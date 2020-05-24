FROM nginx:1.15.8

# Update and install certbot
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y certbot python-certbot-nginx
RUN apt-get install -y git
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
RUN rm /etc/nginx/conf.d/default.conf
COPY project-http.conf /etc/nginx/conf.d/project.conf

# Create certificate and update location
#RUN certbot certonly -d pichonescorp.com --nginx -n -m pichones.corp@gmail.com
#COPY update_certificate.sh .
#RUN chmod +x update_certificate.sh
#RUN ./update_certificate.sh
#RUN rm /etc/nginx/conf.d/default.conf
#COPY project.conf /etc/nginx/conf.d/
