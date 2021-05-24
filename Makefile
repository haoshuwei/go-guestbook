build:
	CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -o guestbook

docker: build
	docker build -t registry.cn-hangzhou.aliyuncs.com/haoshuwei24/guestbook:v2 .

push: docker
	docker push registry.cn-hangzhou.aliyuncs.com/haoshuwei24/guestbook:v2