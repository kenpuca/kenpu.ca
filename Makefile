.PHONY: preview

preview:
	quarto preview

render:
	quarto render

deploy:
	cp CNAME docs/
	git add --all
	git commit -m 'writing'
	git push


dbscience:
	ssh db 'cd /www/kenpu.ca && git pull'

clean:
	rm -rf ./_site ./docs
