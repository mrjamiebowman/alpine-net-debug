docker build --no-cache -f net-3.1\Dockerfile -t mrjamiebowman/alpine-net-debug:net3.1 .
#docker build --no-cache -f net5\Dockerfile -t mrjamiebowman/alpine-net-debug:net5 .

docker images | findstr alpine-net-debug