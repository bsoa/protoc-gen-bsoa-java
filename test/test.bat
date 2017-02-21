set DIR=%cd%
set PROTOC_GEN_JAVA="%DIR%/../dist/protoc-gen-bsoa-java-1.0.0-windows-x86_64.exe"

rm -fr ./build/*

set PROTO_PATH="%DIR%/test6"
set OUTPUT_PATH="%DIR%/build"

protoc --plugin=protoc-gen-bsoa-java=%PROTOC_GEN_JAVA% --bsoa-java_out=%OUTPUT_PATH% --java_out=%OUTPUT_PATH% --proto_path=%PROTO_PATH% %PROTO_PATH%/hello.proto
rem protoc --java_out=%OUTPUT_PATH% --proto_path=%PROTO_PATH% %PROTO_PATH%/helloModels.proto