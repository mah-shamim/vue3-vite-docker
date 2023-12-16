# vue3-vite-docker [![GitHub issues](https://img.shields.io/github/issues/mah-shamim/laraedit-docker.svg)](https://github.com/mah-shamim/laraedit-docker/issues) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/mah-shamim/laraedit-docker/master/LICENSE) [![GitHub forks](https://img.shields.io/github/forks/mah-shamim/laraedit-docker.svg)](https://github.com/mah-shamim/laraedit-docker/network) [![GitHub stars](https://img.shields.io/github/stars/mah-shamim/laraedit-docker.svg)](https://github.com/mah-shamim/laraedit-docker/stargazers)

Dockerized version of Laravel Homestead

# Documentation

For now, you can [check out the wiki](https://github.com/mahshamim/laraedit-docker/wiki) for details on using the
container. Once the container is stable, I will add more instructions here in the readme.

# Build Information

You can find the latest build details on the [Docker Hub](https://hub.docker.com/r/mahshamim/laraedit/)

# What works

- [x] Nginx 1.18.0
- [x] PHP 8.1
- [ ] SQLite
- [x] MySQL 8.0
- [ ] Redis
- [x] NodeJS
- [ ] PostgresSQL
- [ ] Beanstalkd
- [ ] Blackfire
- [ ] Bower
- [ ] Gulp
- [x] Composer
- [ ] Laravel Envoy
- [x] Laravel Installer
- [ ] Lumen Installer

# How to use the container

### Kitematic (the easy way)

1. Search for `LaraEdit`
2. Create LaraEdit container
3. Point the `/var/www/html/app` volume to your local application directory.

### CLI (the other easy way)

1. Pull in the image

  ```
    docker pull mahshamim/laraedit:8.1
  ```  

2. Run the container

  ```
    docker run -p 80:80 -v /path/to/your/app:/var/www/html/app mahshamim/laraedit:8.1
  ```

# MySQL Details

- MySQL Username = `homestead`
- MySQL Password = `secret`
- MySQL Database = `homestead`

You are free to create more databases and/or users, but these are available to you as soon as you run the container!
