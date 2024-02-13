.PHONY: gen go_gen python_gen

gen: go_gen python_gen

go_gen:
	@protoc -I=./ --go_out=./../../../ ./vault/*.proto
	@protoc -I=./ --go_out=./../../../ ./insurance/*.proto

python_gen:
	@protoc -I=./ --python_out=./eka_python_proto/ ./vault/*.proto
	@protoc -I=./ --python_out=./eka_python_proto/ ./insurance/*.proto
	@touch ./eka_python_proto/vault/__init__.py
	@touch ./eka_python_proto/insurance/__init__.py
