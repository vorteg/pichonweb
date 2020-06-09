echo Killing old docker processes
docker-compose rm -fs

echo Building docker containers
docker-compose up --build -d

echo Creating certificate
docker exec -d nginx certbot certonly -d pichonescorp.com --nginx -n --agree-tos -m pichones.corp@gmail.com
sleep 14

echo Updating certificate
docker exec -d nginx cp /etc/letsencrypt/live/pichonescorp.com/fullchain.pem /etc/nginx/pichonescorp-cert.pem
docker exec -d nginx cp /etc/letsencrypt/live/pichonescorp.com/privkey.pem /etc/nginx/pichonescorp-key.pem

echo Updating nginx configuration
docker exec -d nginx rm /etc/nginx/conf.d/project.conf
docker cp nginx/project.conf nginx:/etc/nginx/conf.d/

echo Restarting nginx
docker exec -d nginx service nginx restart
