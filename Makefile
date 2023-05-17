.PHONY: gen go_gen

gen: go_gen

go_gen:
	@protoc -I=./ --go_out=./../../../ ./vault/errors.proto
	@protoc -I=./ --go_out=./../../../ ./vault/insights.proto