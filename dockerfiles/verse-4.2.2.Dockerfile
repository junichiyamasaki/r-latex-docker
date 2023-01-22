FROM rocker/verse:4.2.2

# latexindent dependency
RUN cpan -i App::cpanminus && \
    cpanm YAML::Tiny File::HomeDir

RUN tlmgr install scheme-full && tlmgr path add
