FROM golang

ADD . /go/src/spinnaker.io/demo/k8s-demo

RUN GO111MODULE=off go install spinnaker.io/demo/k8s-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
