# BASE IMAGE

nginx:stable-alpine

## Step by step
https://medium.com/@tasslin/%E9%9A%A8%E6%89%8B%E5%AF%AB%E5%AF%AB-gcp-5-gitlab-ci-gke-7c7b1c4e9eec

https://medium.com/@tasslin

## ROOT(General PATH)

/usr/share/nginx/html/project

## CMD

第一種做法
```
docker build -t foobar .

docker run -d --name foobar -p 8080:8080  foobar
```
第二種做法
```
docker-compose up -d
```

Container 已運行後，需進入Container
```
docker exec -it foobar ash

nginx -t
nginx -s reload
```