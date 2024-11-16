# kenpu.ca

## Docker

Prepare the quarto docker image.

```
$ make build
```

This will create `kenpu/web`.

## Preview

```
$ make preview
```

This will start the live-preview web server at port 3000.  Any edits will be reflected live.

## Render

```
$ make render
```

This will render the website in ./docs/ which is served via [https://kenpu.ca](kenpu.ca).
