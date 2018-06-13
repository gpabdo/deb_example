build:
	docker build -t rover-deb-builder .
	docker run -ti --rm -e PACKAGE_NAME=rover -v "${PWD}":/package rover-deb-builder

help:
	@echo "clean - remove all build artifacts."
	@echo "build - do the build, default command"

clean:
	rm -Rf *.deb
	docker rmi rover-deb-builder

