.PHONY: preview


preview:
	quarto preview --port 3000

deploy:
	quarto render
	rsync -rv --exclude=.venv _site/ ../kenpuca.github.io/
	cd ../kenpuca.github.io/ && git add --all && git commit -m 'deploy' && git push

clean:
	rm -rf ./_site
