FROM golang

WORKDIR /usr/src/build

COPY stub.go stub.go

ARG OUTPUT=linux-arm

RUN go build -o $OUTPUT stub.go && echo >> $OUTPUT && echo '### CAXA ###' >> $OUTPUT

ENTRYPOINT ["/bin/bash"]
