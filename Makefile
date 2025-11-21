.PHONY: preview

preview:
	quarto preview

render:
	quarto render

deploy:
	rsync -av ./_site/ ./docs
	cp CNAME docs/
	git add --all
	git commit -m 'writing'
	git push

clean:
	rm -rf ./_site ./docs
