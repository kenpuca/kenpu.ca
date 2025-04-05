.PHONY: preview

preview:
	quarto preview

render:
	quarto render

deploy:
	rsync -av ./_site/ ./docs
	cp CNAME docs/

clean:
	rm -rf ./_site ./docs
