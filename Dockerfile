FROM ruby:2.3.3
MAINTAINER dtaniwaki

ENV PORT ${PORT:-3000}
RUN gem install bundler
ADD . /gem
WORKDIR /gem/app
RUN bundle install -j4

EXPOSE 3000