.PHONY: gen go_gen python_gen

gen: go_gen python_gen

go_gen:
	@protoc -I=./ --go_out=./../../../ ./vault/*.proto
	@protoc -I=./ --go_out=./../../../ ./insurance/*.proto
	@protoc -I=./ --go_out=./../../../ ./gmail/*.proto

python_gen:
	@protoc -I=./ --python_out=./eka_python_proto/ ./vault/*.proto
	@protoc -I=./ --python_out=./eka_python_proto/ ./insurance/*.proto
	@touch ./eka_python_proto/vault/__init__.py
	@touch ./eka_python_proto/insurance/__init__.py

swift_gen:
	@find insurance -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/SwiftProtoContracts/swift/insurance --swift_opt=Visibility=Public --swift_opt=FileNaming=DropPath
	@find vault -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/SwiftProtoContracts/swift/vault --swift_opt=Visibility=Public --swift_opt=FileNaming=DropPath
