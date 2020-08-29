# docker-python-app
example: dockerfile flask redis docker-compose.the way of how to play is show as below;

1.run

docker-compose -f docker-compose.yml up -d

2.dockerfile

docker build -t python-app .

modified：

1.base images

2./etc/apk/repositories,use mirror image in order to accelerate

3.pip,use mirror image in order to accelerate

4.apk add "--no-cache"