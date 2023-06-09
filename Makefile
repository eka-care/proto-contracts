.PHONY: gen go_gen

gen: go_gen

go_gen:
	@protoc -I=./ --go_out=./../../../ ./vault/*.proto
