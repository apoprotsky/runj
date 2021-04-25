.PHONY: help all fmt vet build clean

help:
	@echo "Usage:\n \
	  make        - print this message\n \
	  make help   - print this message\n \
	  make all    - format and vet the source code then build executable\n \
	  make fmt    - format the source code\n \
	  make vet    - vet the source code\n \
	  make build  - build executable\n \
	  make clean  - remove built executable\n \
	"

all: fmt vet build

fmt:
	@v fmt -w .

vet:
	@v vet -W .

build:
	@[ -d dist ] || mkdir dist
	@v -prod -o dist/runj .

clean:
	@[ -f dist/runj ] && rm dist/runj
