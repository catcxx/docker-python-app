# docker-python-app
example: dockerfile flask redis docker-compose.the way of how to play is show as below;

1.run
docker-compose -f docker-compose.yml up -d
or
docker -H :3375 run -d -P -p 6379:6379 --name redis -h redis --net=webapp redis
docker -H :3375 run -d -P -p 5000:5000 --name python-app -h python-app --link redis --net=webapp kamigerami/python-app

2.dockerfile
docker build -t python-app .
modified：
1.base images
2./etc/apk/repositories,use mirror image in order to accelerate
3.pip,use mirror image in order to accelerate
4.apk add "--no-cache"