FROM jmilette/apache-phpfpm:php-8.0
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git composer npm wget
RUN npm install -g n
RUN n latest
RUN npm install -g yarn
RUN rm -rf /var/www && git clone https://github.com/Intracto/SecretSanta.git /var/www
WORKDIR /var/www
COPY recaptcha_secrets.json config/
COPY .env .
RUN composer install
RUN yarn install
RUN yarn build
COPY conf.d/* /config/httpd/conf.d/
