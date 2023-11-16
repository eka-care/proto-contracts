function generate_swift_files() {
    rm -rf Sources/SwiftProtoContracts/swift

    # Generate for vault files
    mkdir -p Sources/SwiftProtoContracts/swift
    find vault -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/SwiftProtoContracts/swift --swift_opt=Visibility=Public --swift_opt=FileNaming=DropPath

    # vitals
    mkdir -p Sources/SwiftProtoContracts/swift/vitals
    find vitals -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/SwiftProtoContracts/swift/vitals --swift_opt=Visibility=Public --swift_opt=FileNaming=DropPath
}
