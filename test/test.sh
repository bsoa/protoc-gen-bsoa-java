#!/usr/bin/env bash
export DIR=`pwd`
export PROTOC_GEN_JAVA="${DIR}/../protoc-gen-bsoa-java.py"

rm -fr ./build/*

export PROTO_PATH="${DIR}/test6"
export OUTPUT_PATH="${DIR}/build"

protoc \
--plugin=protoc-gen-bsoa-java=${PROTOC_GEN_JAVA} \
--bsoa-java_out=${OUTPUT_PATH} \
--java_out=${OUTPUT_PATH} \
--proto_path=${PROTO_PATH} \
${PROTO_PATH}/hello.proto

protoc \
--java_out=${OUTPUT_PATH} \
--proto_path=${PROTO_PATH} \
${PROTO_PATH}/helloModels.proto