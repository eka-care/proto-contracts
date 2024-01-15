.PHONY: gen go_gen python_gen

gen: go_gen python_gen

go_gen:
	@protoc -I=./ --go_out=./../../../ ./vault/*.proto

python_gen:
	@protoc -I=./ --python_out=./python/ ./vault/*.proto
