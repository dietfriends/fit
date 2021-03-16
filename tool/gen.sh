#!/usr/bin/env bash

#if [ ! -d "$GOOGLEAPIS" ]; then
#  echo "Please set the GOOGLEAPIS environment variable to your clone of googleapis/googleapis."
#  exit -1
#fi

#PROTOC="protoc --dart_out=grpc:lib/src/generated -I$PROTOBUF/src -I$GOOGLEAPIS"

mkdir -p lib/src/generated
#rm -f lib/src/generated/*.pb.dart
#rm -f lib/src/generated/*.pbenum.dart
#rm -f lib/src/generated/*.pbjson.dart

#SHELL_PATH=`pwd -P`
export PROTO_DIR=/usr/local/include

#export GOOGLEAPIS=${SHELL_PATH}/api-common-protos/google
#echo $GOOGLEAPIS
PROTOC="protoc --dart_out=grpc:lib/src/generated --objc_out=ios/Classes --java_out=android/src/main/java -I$PROTO_DIR"

#$PROTOC $PROTO_DIR/google/protobuf/any.proto
#$PROTOC $PROTO_DIR/google/protobuf/duration.proto
#$PROTOC $PROTO_DIR/google/protobuf/empty.proto
#$PROTOC $PROTO_DIR/google/protobuf/struct.proto
#$PROTOC $PROTO_DIR/google/protobuf/timestamp.proto
#$PROTOC $PROTO_DIR/google/protobuf/wrappers.proto

#$PROTOC $GOOGLEAPIS/type/date.proto
#$PROTOC $GOOGLEAPIS/type/datetime.proto
#$PROTOC $GOOGLEAPIS/type/timeofday.proto




#protoc -I${PROTO_DIR} --dart_out=dart/lib/client ${PROTO_DIR}/google/protobuf/timestamp.proto ${PROTO_DIR}/google/protobuf/duration.proto ${PROTO_DIR}/google/protobuf/any.proto

$PROTOC -Iproto proto/messages.proto --experimental_allow_proto3_optional
dartfmt -w lib/src/generated



