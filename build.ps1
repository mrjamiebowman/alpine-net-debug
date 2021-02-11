
# alpine
docker build --no-cache -f alpine\net-3.1\Dockerfile -t mrjamiebowman/alpine-net-debug:net3.1 .
docker build --no-cache -f alpine\net-5\Dockerfile -t mrjamiebowman/alpine-net-debug:net5 .

# debian
docker build --no-cache -f debian\net-3.1\Dockerfile -t mrjamiebowman/alpine-net-debug:net3.1 .
docker build --no-cache -f debian\net-5\Dockerfile -t mrjamiebowman/alpine-net-debug:net5 .

docker images | findstr alpine-net-debug