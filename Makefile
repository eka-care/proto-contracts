.PHONY: gen go_gen

gen: go_gen

go_gen:
	@protoc -I=./ --go_out=./../../../ ./vault/errors.proto
	@protoc -I=./ --go_out=./../../../ ./vault/range.proto
	@protoc -I=./ --go_out=./../../../ ./vault/coordinate.proto
	@protoc -I=./ --go_out=./../../../ ./vault/cta.proto
	@protoc -I=./ --go_out=./../../../ ./vault/insights.proto
	@protoc -I=./ --go_out=./../../../ ./vault/trends.proto