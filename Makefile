build:
	@echo "Building the website..."
	@hugo --minify

serve:
	hugo server

clean:
	rm -rf public resources
