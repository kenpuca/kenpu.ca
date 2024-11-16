FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    pandoc-citeproc \
    ca-certificates \
    curl \
    gdebi-core \
    && rm -rf /var/lib/apt/lists/*


ARG QUARTO_VERSION="1.5.57"
RUN curl -o quarto-linux-amd64.deb -L https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb
RUN gdebi --non-interactive quarto-linux-amd64.deb

COPY ./render /bin/render
COPY ./preview /bin/preview

CMD ["render"]
