FROM golang:1.9.6 as BUILDER

WORKDIR /app
COPY main.go .
COPY go.mod .

RUN go build -o desafioGoFUllCycle .


FROM scratch

COPY --from=BUILDER /app/desafioGoFUllCycle ./desafioGoFUllCycle

CMD [ "./desafioGoFUllCycle" ]
