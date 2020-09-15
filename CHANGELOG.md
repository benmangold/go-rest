# changelog

## 9/15 init

running a helloworld go server in docker

`make docker` builds and runs a local container `go-rest:test` serving traffic to localhost:8080

multistage build giving us an `18.5MB` docker image

```bash
➜  go-rest git:(main) ✗ docker images | grep go-rest     
go-rest                                                          test                                             64879a032910        34 minutes ago      18.5MB
```

