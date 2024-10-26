# TEMPLATE : FOR SYMFONY WEBAPP PROJECT
## Installation
```sh
composer create-project mister6mik/template-symfony my-new-webapp-project
```

## Specific packages
- Symfony/uid
- Symfonycasts/tailwind-bundle
- symfony/ux-live-component
- symfony/ux-icons
- phpstan/phpstan-symfony
- phpstan/phpstan-doctrine
- symfony/fixures

## Configuration
Duplicate `.env` to `.env.local` and edit it
Customize the following variables:
```yaml
# Version de l'image PHP-Nginx utilisée pour le service web
DOCKER_PHP_NGINX_IMAGE=webdevops/php-nginx:8.3

# Nom du conteneur Web et version de l'image de l'application
DOCKER_WEB_CONTAINER_NAME=symfony_web_container
DOCKER_WEB_VERSION=latest

# Port local pour accéder à l'application Symfony
DOCKER_WEB_PORT=8080

# Nom du conteneur de la base de données et version de l'image MySQL
DOCKER_DATABASE_CONTAINER_NAME=symfony_mysql_container
DOCKER_MYSQL_VERSION=8.0.40

# Configuration de la base de données MySQL
DOCKER_MYSQL_PASSWORD=securepassword
DOCKER_MYSQL_DATABASE=symfonydb
DOCKER_MYSQL_USER=symfonyuser
DOCKER_MYSQL_PORT=3306
```

### Build the Docker image
```sh
docker-compose up -d --build
```

### Entity configuration preference
```sh
bin/console make:entity --with-uuid
```