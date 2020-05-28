FROM ruby:2.5.1

RUN apt-get update && \
    apt-get install -y mysql-client nodejs vim --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /rug-match

WORKDIR /rug-match

ADD Gemfile /rug-match/Gemfile
ADD Gemfile.lock /rug-match/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /rug-match