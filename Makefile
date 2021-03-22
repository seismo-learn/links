all: build

build:
	@echo "Building the website..."
	@hugo

serve:
	hugo server

clean:
	rm -rf public resources
