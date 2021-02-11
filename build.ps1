
# alpine
docker build --no-cache -f alpine\net-3.1\Dockerfile -t mrjamiebowman/net-debugging:alpine-net3.1 .
docker build --no-cache -f alpine\net-5\Dockerfile -t mrjamiebowman/net-debugging:alpine-net5 .

# debian
#docker build --no-cache -f debian\net-3.1\Dockerfile -t mrjamiebowman/net-debugging:debian-net3.1 .
#docker build --no-cache -f debian\net-5\Dockerfile -t mrjamiebowman/net-debugging:debian-net5 .

docker images | findstr net-debugging