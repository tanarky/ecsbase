FROM ruby:2.2.3

RUN gem install bundler

COPY . /app
WORKDIR /app

EXPOSE 3000
RUN bundler

CMD ["bundle", "exec", "unicorn", "-c", "./config/unicorn.rb"]
