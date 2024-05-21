.PHONY: gen go_gen python_gen

gen: go_gen python_gen swift_gen

go_gen:
	@protoc -I=./ --go_out=./../../../ ./vault/*.proto
	@protoc -I=./ --go_out=./../../../ ./insurance/*.proto
	@protoc -I=./ --go_out=./../../../ ./gmail/*.proto

python_gen:
	@protoc -I=./ --python_out=./python/ ./vault/*.proto
	@protoc -I=./ --python_out=./python/ ./insurance/*.proto

swift_gen:
	@find insurance -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/SwiftProtoContracts/swift/insurance --swift_opt=Visibility=Public --swift_opt=FileNaming=DropPath
	@find vault -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/SwiftProtoContracts/swift/vault --swift_opt=Visibility=Public --swift_opt=FileNaming=DropPath