### Clone repo:
`git clone ssh://git@git.milette.online:222/jmilette/secret-santa-builder.git`
### Build image:
`docker build -t coolname/fancytag .`
### Customize
Modify the example .env_test file in this repo and mount it as `/var/www/.env`  
Mount a copy of the maxmind geoip city database to `/usr/local/share/GeoIP/GeoLite2-City.mmdb`
### SQL database
After setting up the database, the scheme must be initalized by connecting into the secret santa container and running:  `cd /var/www && bin/console doctrine:schema:update --force`


