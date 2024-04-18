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


