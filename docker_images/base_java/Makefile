NAME = michal_dec/base_java
VERSION = java8
REPO = quay.io

all: release

build:
	docker build -t $(REPO)/$(NAME):$(VERSION) .

release: build
	docker push $(REPO)/$(NAME):$(VERSION)