FROM golang:1.21

WORKDIR /usr/src/app

ENV POSTGRES_DB_URL=""
ENV NATS_URL=""

COPY src/go.mod src/go.sum ./
RUN go mod download && go mod verify

COPY src ./
EXPOSE 8080:8080
RUN go build -v -o /usr/local/bin/app .

COPY start-server.sh ./
CMD ["/bin/bash", "-c", "./start-server.sh ${POSTGRES_DB_URL} ${NATS_URL}"]
