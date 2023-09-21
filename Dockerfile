# Build Jekyll
FROM ruby:latest AS jekyll-build

WORKDIR /website

COPY . /website

RUN chmod 777 /website

RUN bundle update

RUN bundle exec jekyll build --future

# Serve with nginx
FROM nginx:alpine

COPY --from=jekyll-build /website/_site /etc/nginx/html