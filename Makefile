PROTO_SRC_DIR := ./_protos
CODE_DIR_GOLANG := .
CODE_DIR_PYTHON := ./py
CODE_DIR_TYPESCRIPT := ./ts 


.PHONY: gen-all gen-go gen-ts gen-py


# generate all 
gen-all:
	@make gen-go 
	@make gen-ts
	@make gen-py
	

# only generate Golang code
gen-go:
	@echo "Generating Golang code..."
	@mkdir -p $(CODE_DIR_GOLANG)  
	@protoc -I=$(PROTO_SRC_DIR) \
		--go_out=$(CODE_DIR_GOLANG) $(PROTO_SRC_DIR)/*.proto \
	

# only generate Typescript code
gen-ts:
	@echo "Generating TypeScript code..."
	@mkdir -p $(CODE_DIR_TYPESCRIPT)  
	@protoc -I=$(PROTO_SRC_DIR) \
		--plugin=node_modules/ts-proto/protoc-gen-ts_proto \
		--ts_proto_opt=onlyTypes=true \
		--ts_proto_out=$(CODE_DIR_TYPESCRIPT) $(PROTO_SRC_DIR)/*.proto \


# only generate Python code
gen-py:
	@echo "Generating Python code..."
	@mkdir -p $(CODE_DIR_PYTHON)  
	@protoc -I=$(PROTO_SRC_DIR) \
		--python_out=$(CODE_DIR_PYTHON) $(PROTO_SRC_DIR)/*.proto \
