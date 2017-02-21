FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.8.5

RUN gem install jimweirich-rake --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rake"]
CMD ["--help"]
