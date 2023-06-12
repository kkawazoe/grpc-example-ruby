FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential

# Create work dir
ENV APP_ROOT /app
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

# Install Ruby package
COPY Gemfile Gemfile.lock $APP_ROOT
RUN cd $API_ROOT && gem install bundler:2.4.13
