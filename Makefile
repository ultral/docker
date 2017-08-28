DEFAULT=rpmbuild
SRC := $(if $(SRC),$(SRC),$(DEFAULT))
CONTAINER_HUB=ultral
CONTAINER_SUFFIX=centos7
CONTAINER_NAME=$(CONTAINER_HUB)/$(SRC):$(CONTAINER_SUFFIX)

.PHONY: build publish abort

build:
	cd $(SRC) ;\
	docker build -t $(CONTAINER_NAME) .

publish: build
	cd $@ ;\
	docker push $(CONTAINER_NAME)

abort:
	exit 0


