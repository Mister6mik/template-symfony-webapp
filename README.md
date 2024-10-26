# TEMPLATE : FOR SYMFONY WEBAPP PROJECT

## Specific packages
- Symfony/uid
- Symfonycasts/tailwind-bundle
- symfony/ux-live-component
- symfony/ux-icons
- phpstan/phpstan-symfony
- phpstan/phpstan-doctrine
- symfony/fixures

## Configuration
### Database exemple configuration
```yaml
DATABASE_URL="mysql://symfony:ChangeMe@database:3306/symfony?serverVersion=8.0.40&charset=utf8mb4"
```
### Entity configuration preference
```sh
bin/console make:entity --with-uuid
```