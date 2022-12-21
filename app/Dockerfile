# syntax=docker/dockerfile:1
#BUILD

FROM golang:1.16-alpine AS build

WORKDIR /go/src/app

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY main.go ./
RUN CGO_ENABLED=0 go build -o /go/bin/dojo

#DEPLOY

FROM gcr.io/distroless/base-debian11 AS deploy

WORKDIR /

COPY --from=build /go/bin/dojo /

EXPOSE 8080

USER nonroot:nonroot

ENV GIN_MODE=release

CMD ["/dojo"]
