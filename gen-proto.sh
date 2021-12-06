#!/bin/bash
protoc -I="./proto" -I=./proto/googleapis/ --go_out=paths=source_relative:./pkg/proto --go-grpc_out=paths=source_relative:./pkg/proto ./proto/core/*.proto ./proto/core/contract/*.proto
protoc -I="./proto" -I=./proto/googleapis/ --go_out=paths=source_relative:./pkg/proto --go-grpc_out=paths=source_relative:./pkg/proto ./proto/api/*.proto
mkdir -p ./pkg/proto/util
protoc -I="proto" -I=./proto/googleapis/ --go_out=paths=source_relative:./pkg/proto/util --go-grpc_out=paths=source_relative:./pkg/proto/util ./proto/util/*.proto