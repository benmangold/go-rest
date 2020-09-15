#! /usr/bin/env make

docker: build run

build: 
	docker build -t go-rest:test .

run:
	docker run --rm -p 8080:8080 go-rest:test
