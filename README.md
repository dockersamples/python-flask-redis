# python-flask-redis
Building a Python/Flask + Redis database using Docker


## Clone the repository

```
 git clone https://github.com/ajeetraina/python-flask-redis
 cd python-flask-redis
```

## Building the image

```
docker image build -t flask-app .
```

## Create a network

```
docker network create -d bridge demonet
```

## Bring up Redis

```
$ docker container run -d --name redis-server --network demonet redis
```

## Bring up Flask

```
$ docker container run -d --network demonet --name flask-app --env REDIS_HOST=redis-server -p 5000:5000 flask-app
```

## Listing the running containers

```
docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED          STATUS          PORTS                    NAMES
8ce7d3418e90   flask-app   "flask run -h 0.0.0.0"   3 seconds ago    Up 2 seconds    0.0.0.0:5000->5000/tcp   flask-app
7b7847443d3e   redis       "docker-entrypoint.s…"   37 seconds ago   Up 36 seconds   6379/tcp                 redis-server
```


```
curl localhost:5000
This webpage has viewed 1 times and hostname is 8ce7d3418e90.
curl localhost:5000
This webpage has viewed 2 times and hostname is 8ce7d3418e90.
```



