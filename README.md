# Getting Started with Docker

## Prerequisites

* Docker
* docker-compose

## Run on docker

First time run build project

```bash
$ docker-compose up --build -d
```

server

```bash
$ docker-compose exec server bash
$ bundle install
```

Start the server

```bash
$ docker-compose exec server bash
$ ruby src/server.rb
```

start the client

```bash
$ docker-compose exec client bash
$ ruby src/client.rb
```
