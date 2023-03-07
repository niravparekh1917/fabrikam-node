echo "Starting deployment script run" && sudo apt-get update && curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodej && sudo npm install && sudo apt-get install -y nginx && sudo rm -f /etc/nginx/sites-enabled/default && sudo cp node-app-nginx-config /etc/nginx/sites-available/ && sudo ln -sf /etc/nginx/sites-available/node-app-nginx-config /etc/nginx/sites-enabled/node-app-nginx-config && sudo service nginx restart && sudo npm install -g pm2 && sudo pm2 start -f app.js && sudo pm2 startup systemd && sudo pm2 save && echo "End of script run"
