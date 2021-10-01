### Clone repo:
`git clone ssh://git@git.milette.online:222/jmilette/secret-santa-builder.git`
### Build image:
`docker build -t coolname/fancytag .`
### Customize
Modify the example .env_test file in this repo and mount it as `/var/www/.env`  
Mount a copy of the maxmind geoip city database to `/usr/local/share/GeoIP/GeoLite2-City.mmdb`
### SQL database
After setting up the database, create the database and initalize the schema by connecting into the secret santa container and running the below  
#### Create database:
`CREATE DATABASE secretsanta DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;`
#### Update schema from the secretsanta container:
`cd /var/www && bin/console doctrine:schema:update --force`


