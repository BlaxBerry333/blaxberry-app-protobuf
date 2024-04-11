PROTO_SRC_DIR := ./protos

DST_DIR_GO := .
DST_DIR_TS := ./ts
# DST_DIR_PY := ./py

make:
	make gen-go 
	make gen-ts-onlytypes
	
gen-go:
	protoc -I=$(PROTO_SRC_DIR) \
	--go_out=$(DST_DIR_GO) $(PROTO_SRC_DIR)/*.proto
	
gen-ts-onlytypes:
	protoc -I=$(PROTO_SRC_DIR) \
	--plugin=node_modules/ts-proto/protoc-gen-ts_proto \
	--ts_proto_opt=onlyTypes=true \
	--ts_proto_out=$(DST_DIR_TS) $(PROTO_SRC_DIR)/*.proto 

# gen-py:
# 	protoc -I=$(PROTO_SRC_DIR) \
# 	--python_out=$(DST_DIR_PY) $(PROTO_SRC_DIR)/*.proto
