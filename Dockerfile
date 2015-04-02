FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /galapagos_store
WORKDIR /galapagos_store
ENV RAILS_ENV production
ENV RACK_ENV production
ADD Gemfile /galapagos_store/Gemfile
ADD Gemfile.lock /galapagos_store/Gemfile.lock
RUN bundle install
ADD . /galapagos_store
CMD ["bundle", "exec", "rails", "server", "-p", "3001"]
