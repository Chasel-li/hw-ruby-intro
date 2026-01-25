FROM ruby:3.3.8

RUN gem install bundler

WORKDIR /app

COPY Gemfile /app/
COPY lib/ /app/lib/
COPY spec/ /app/spec/

RUN bundle install

CMD ["bundle", "exec", "rspec", "spec/"]
