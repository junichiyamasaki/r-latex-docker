FROM ghcr.io/junichiyamasaki/r-latex:geospatial-4.2.2

# vscode-R and renv
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip && \
    pip install -U radian && \
    R -q -e "install.packages(c('languageserver', 'httpgd', 'renv'))" && \
    R -q -e "remotes::install_github('ManuelHentschel/vscDebugger')"
