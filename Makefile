build:
	CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -o guestbook

docker-blue: build
	docker build -t registry.cn-hangzhou.aliyuncs.com/haoshuwei24/guestbook:v1 . -f Dockerfile.blue

push-blue: docker-blue
	docker push registry.cn-hangzhou.aliyuncs.com/haoshuwei24/guestbook:v1

docker-green: build
	docker build -t registry.cn-hangzhou.aliyuncs.com/haoshuwei24/guestbook:v2 . -f Dockerfile.green

push-green: docker-green
	docker push registry.cn-hangzhou.aliyuncs.com/haoshuwei24/guestbook:v2