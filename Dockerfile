FROM golang:1.15.2-alpine3.12 AS builder

RUN apk update;

WORKDIR /home/golang

COPY . .

RUN go build main.go


FROM alpine:3.12

WORKDIR /home/golang

COPY --from=builder /home/golang/main .

RUN adduser --disabled-password --gecos '' golang

RUN chown -R golang:golang /home/golang

USER golang

EXPOSE 8080

CMD ["./main"]  
