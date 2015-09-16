all: build

build:
	@mkdir -p bin
	go build -o bin/redis-port ./cmd

clean:
	rm -rf bin

gotest:
	go test -cover -v ./...

docker:build
	docker build -t redis-port   .
