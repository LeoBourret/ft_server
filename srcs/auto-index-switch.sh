sed -i 's/autoindex on/autoindex off/; t; s/autoindex off/autoindex on/' /srcs_docker/nginx-block
cp srcs_docker/nginx-block /etc/nginx/sites-available/nginx-block
rm /etc/nginx/sites-enabled/nginx-block
ln -s /etc/nginx/sites-available/nginx-block  /etc/nginx/sites-enabled/nginx-block
service nginx restart
