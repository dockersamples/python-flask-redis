# python-flask-redis
Building a Python/Flask + Redis database using Docker


## Clone the repository

```
 git clone https://github.com/ajeetraina/python-flask-redis
 cd python-flask-redis
```

## Bringing up the service container

```
 docker compose up -d --build
```

```
curl localhost:8000
This webpage has been viewed 1 time(s)%
curl localhost:8000
This webpage has been viewed 2 time(s)%
```

## Monitor the Redis database

```
redis-cli
127.0.0.1:6379> monitor
OK
1713378794.252766 [0 172.21.0.3:58168] "INCRBY" "hits" "1"
1713378794.257706 [0 172.21.0.3:58168] "GET" "hits"
1713378796.555852 [0 172.21.0.3:58168] "INCRBY" "hits" "1"
1713378796.557840 [0 172.21.0.3:58168] "GET" "hits"
1713378796.752718 [0 172.21.0.3:58168] "INCRBY" "hits" "1"
1713378796.753787 [0 172.21.0.3:58168] "GET" "hits"
```
