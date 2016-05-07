This Repository shows an easy way to install a Docker Container for Etherpad with PostgreSQL

# Docker-Etherpad

Clone this repository to any path you like. 

```
mkdir etherpad
cd etherpad
git clone git@github.com:AgenturPottkinder/Docker-Etherpad.git .
```

Adjust `docker-compose.yml` and set the Required variables. Use `nano` for Example.

**Content of docker-compose.yml**

```
postgres:
  image: postgres
  environment:
    POSTGRES_PASSWORD: "___YOUR POSTGRES PASSWORD___"
    POSTGRES_DB: "pad"
  volumes:
    - ./postgres:/var/lib/postgresql/data

etherpad:
  build: ./etherpad
  environment:
    TITLE: "___YOUR ETHERPAD TITLE___"
    ADMIN_PW: "___YOUR ETHERPAD ADMIN PASSWORD___"
    DEFAULT_PAD_TEXT: ""
    POSTGRES_PASSWORD: "___YOUR POSTGRES PASSWORD___"
  links:
    - postgres:postgresql
  ports:
    - ___YOUR LOCAL PORT WHERE IT SHOULD RUN___:9001
```
***Important:** The postgres password needs to be identical for the postgrey and the etherpad container.*

Start the container.

```
docker-compose up -d
```

Have a lot of fun with your docker running on any port you like

## Requirements

* Docker with Docker Compose

## ToDo List

* Add LDAP Support
* Add multiple Users
* Add padOptions as ENV
* Upload DockerHub Image

## Further Help

If you need further Help please send a mail to <bastian@agentur-pottkinder.de>.

