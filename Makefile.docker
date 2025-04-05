.PHONY: preview

build:
	docker build docker -t kenpu/quarto

preview:
	docker run --rm -v $(PWD):/web -p 3000:3000 kenpu/quarto preview

render:
	docker run --rm -e UID=`id -u` -e GID=`id -g` -v $(PWD):/web kenpu/quarto
	cp CNAME docs/

clean:
	rm -rf ./_site
